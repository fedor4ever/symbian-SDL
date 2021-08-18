#include "remotectrlmonitor.h"

#include "SDL_keysym.h"
#include "SDL_EpocVideo.h"
#include "SDL_events.h"
extern "C"
	{
	#include "SDL_events_c.h"
	#include "SDL_sysvideo.h"
	}
#include <stdio.h>
#define REMCONKEY1 SDLK_PAGEUP
#define REMCONKEY2 SDLK_PAGEDOWN
#define REMCONKEY3 SDLK_INSERT 
#define REMCONKEY4 SDLK_LALT
void IncreaseVolume();
void DecreaseVolume();
extern SDL_VideoDevice * current_video;
//void EPOC_GenerateKeyEvent(SDL_VideoDevice *_this,int aScanCode,int aIsDown, TBool aShiftOn);
CRemConEventTimer* CRemConEventTimer::NewL(TInt aKeyCode, CRemoteCtrlEventMonitor* aMonitor) 
    {
    CRemConEventTimer* self = new (ELeave) CRemConEventTimer(aKeyCode, aMonitor);
    CleanupStack::PushL(self);
    self->ConstructL();
    CleanupStack::Pop();
    return self;
    }
CRemConEventTimer::~CRemConEventTimer() 
    {
    Cancel();
    iTimer.Close();
    }
    
void CRemConEventTimer::DoCancel() 
    {
    iTimer.Cancel();
    }

    
void CRemConEventTimer::RunL() 
    {
    if (iStatus.Int() == KErrCancel)
        {
        return;
        } 
    //Key_Event(iKeyCode, qfalse, Sys_Milliseconds());
    iMonitor->GenerateEvent(iKeyCode, 0);    
    }
    
void CRemConEventTimer::IssueRequest(TInt aTimeOutInMillis) 
    {
	iStatus = KRequestPending;
	iTimer.After(iStatus, aTimeOutInMillis*1000);    
    SetActive();
    }

CRemConEventTimer::CRemConEventTimer(TInt aKeyCode, CRemoteCtrlEventMonitor* aMonitor) : CActive(EPriorityNormal), iKeyCode(aKeyCode), iMonitor(aMonitor) 
    {
    CActiveScheduler::Add(this);
    }

void CRemConEventTimer::ConstructL() 
    {
    User::LeaveIfError(iTimer.CreateLocal());
    }


int CRemoteCtrlEventMonitor::MapRemoteCtrlKey(TRemConCoreApiOperationId aOp)
    {
    switch (aOp)
        {
        case ERemConCoreApiVolumeUp:
            return REMCONKEY1;
        case ERemConCoreApiVolumeDown:                    
            return REMCONKEY2;
        default: return 0;
        }
    }


CRemoteCtrlEventMonitor::CRemoteCtrlEventMonitor() 
    {
    }
    
CRemoteCtrlEventMonitor::~CRemoteCtrlEventMonitor()
    {
    delete iInterfaceSelector;    
    delete iCancelTimers[0];
    delete iCancelTimers[1];
    }

CRemoteCtrlEventMonitor* CRemoteCtrlEventMonitor::NewL()
    {
    CRemoteCtrlEventMonitor* self = new (ELeave)CRemoteCtrlEventMonitor;
    CleanupStack::PushL(self);
    self->ConstructL();
    CleanupStack::Pop();
    return self;
    }

void CRemoteCtrlEventMonitor::ConstructL()
    {
    iInterfaceSelector = CRemConInterfaceSelector::NewL();
    iCoreTarget = CRemConCoreApiTarget::NewL(*iInterfaceSelector, *this);
    iInterfaceSelector->OpenTargetL();
    iCancelTimers[0] = CRemConEventTimer::NewL(REMCONKEY1, this);
    iCancelTimers[1] = CRemConEventTimer::NewL(REMCONKEY2, this);
    }
    
void CRemoteCtrlEventMonitor::GenerateEvent(int keycode, int pressed)
	{
	if(current_video->hidden->iControlKeyDown)
		{
		if(pressed)
			{
			if (keycode == REMCONKEY1) 
				IncreaseVolume(); 
			else 
				DecreaseVolume();
			}
		}
	else if(current_video->hidden->iHasMouseOrTouch)
		{
		int sdlPressed = pressed?SDL_PRESSED:SDL_RELEASED;
		int sdlMouseButton = (keycode == REMCONKEY1)?SDL_BUTTON_LEFT:SDL_BUTTON_RIGHT;
		SDL_PrivateMouseButton(sdlPressed, sdlMouseButton, 0, 0);		
		}

	else
		{				
		SDL_keysym keysym;		
		SDLMod modState = SDL_GetModState();		
		keysym.scancode = keycode;
		keysym.sym = (SDLKey) keycode;
		keysym.mod = modState;
		keysym.unicode = keycode;									
		SDL_PrivateKeyboard(pressed?SDL_PRESSED:SDL_RELEASED, &keysym);		
		}
	}

void CRemoteCtrlEventMonitor::MrccatoCommand(TRemConCoreApiOperationId aOperationId, TRemConCoreApiButtonAction aButtonAct)
    {
    TRequestStatus status;
    int remconcode = MapRemoteCtrlKey(aOperationId);
    switch (aButtonAct)
        {
        case ERemConCoreApiButtonPress:        	
            if (remconcode == REMCONKEY1)
                {
                iCancelTimers[0]->Cancel();
                }
            else if (remconcode == REMCONKEY2)
                {
                iCancelTimers[1]->Cancel();
                }
            break;
        case ERemConCoreApiButtonRelease:        	
            //Key_Event(remconcode, qfalse, Sys_Milliseconds());
        	GenerateEvent(remconcode, 0);            
            break;
        case ERemConCoreApiButtonClick:        	
            if (remconcode == REMCONKEY1)
                {          
                if (iCancelTimers[0]->IsActive())
                    {
                    //Key_Event(remconcode, qfalse, Sys_Milliseconds());
                	GenerateEvent(remconcode, 0);
                    iCancelTimers[0]->Cancel();
                    }
                iCancelTimers[0]->IssueRequest(KAutoCancelTimeOutInMillis);
                }
            else if (remconcode == REMCONKEY2)
                {
                if (iCancelTimers[1]->IsActive())
                    {
                    //Key_Event(remconcode, qfalse, Sys_Milliseconds());
                	GenerateEvent(remconcode, 0);
                    iCancelTimers[1]->Cancel();
                    }
                iCancelTimers[1]->IssueRequest(KAutoCancelTimeOutInMillis);
                }
            GenerateEvent(remconcode, 1);
            //Key_Event(remconcode, qtrue, Sys_Milliseconds());
            break;
        default:
            break;
        }
    
    switch(aOperationId)
    	{
    	case ERemConCoreApiPlay:
    		break;
    	case ERemConCoreApiStop:
    		break;
    	case ERemConCoreApiVolumeUp:
    		iCoreTarget->VolumeUpResponse(status, KErrNone);
    		User::WaitForRequest(status);
    		break;
    	case ERemConCoreApiVolumeDown:
    		iCoreTarget->VolumeDownResponse(status, KErrNone);
    		User::WaitForRequest(status);
    		break;
      default:
        break;
    	}
            
    }


/** 
A 'play' command has been received. 
@param aSpeed The playback speed.
@param aButtonAct The button action associated with the command.
*/
 void CRemoteCtrlEventMonitor::MrccatoPlay(TRemConCoreApiPlaybackSpeed aSpeed, 
	TRemConCoreApiButtonAction aButtonAct)
	 {
	 
	 }

/**
A 'tune function' command has been received.
@param aTwoPart If EFalse, only aMajorChannel is to be used. Otherwise, 
both aMajorChannel and aMinorChannel are to be used.
@param aMajorChannel The major channel number.
@param aMinorChannel The minor channel number.
@param aButtonAct The button action associated with the command.
*/
 void CRemoteCtrlEventMonitor::MrccatoTuneFunction(TBool aTwoPart, 
	TUint aMajorChannel, 
	TUint aMinorChannel,
	TRemConCoreApiButtonAction aButtonAct)
	 {	 }

/** 
A 'select disk function' has been received.
@param aDisk The disk.
@param aButtonAct The button action associated with the command.
*/
 void CRemoteCtrlEventMonitor::MrccatoSelectDiskFunction(TUint aDisk,
	TRemConCoreApiButtonAction aButtonAct)
	 {}

/** 
A 'select AV input function' has been received.
@param aAvInputSignalNumber The AV input.
@param aButtonAct The button action associated with the command.
*/
 void CRemoteCtrlEventMonitor::MrccatoSelectAvInputFunction(TUint8 aAvInputSignalNumber,
	TRemConCoreApiButtonAction aButtonAct){
 }

/** 
A 'select audio input function' has been received.
@param aAudioInputSignalNumber The audio input.
@param aButtonAct The button action associated with the command.
*/
 void CRemoteCtrlEventMonitor::MrccatoSelectAudioInputFunction(TUint8 aAudioInputSignalNumber,
	TRemConCoreApiButtonAction aButtonAct){}
