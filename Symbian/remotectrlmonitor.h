#ifndef __REMOTECTRLMONITOR_H__
#define __REMOTECTRLMONITOR_H__

#include <e32std.h>
#include <e32base.h>
#include <remconcoreapitargetobserver.h>
#include <remconinterfaceselector.h>
#include <remconcoreapitarget.h>

static const TInt KAutoCancelTimeOutInMillis = 650;
class CRemoteCtrlEventMonitor;
class CRemConEventTimer : public CActive
    {
    public:
        static CRemConEventTimer* NewL(TInt aKeyCode, CRemoteCtrlEventMonitor* aMonitor);
        virtual ~CRemConEventTimer();
        void DoCancel();
        void RunL();
        void IssueRequest(TInt aTimeOutInMillis);
    protected:
        CRemConEventTimer(TInt aKeyCode, CRemoteCtrlEventMonitor* aMonitor);
        void ConstructL();
    private:
        RTimer iTimer;
        TInt iKeyCode;
        CRemoteCtrlEventMonitor* iMonitor;
    };


class CRemoteCtrlEventMonitor : public CBase, public MRemConCoreApiTargetObserver
    {
    public:
        static CRemoteCtrlEventMonitor* NewL();
        ~CRemoteCtrlEventMonitor();
        void MrccatoCommand(TRemConCoreApiOperationId aOperationId,
                            TRemConCoreApiButtonAction aButtonAct);
    	/** 
    	A 'play' command has been received. 
    	@param aSpeed The playback speed.
    	@param aButtonAct The button action associated with the command.
    	*/
    	virtual void MrccatoPlay(TRemConCoreApiPlaybackSpeed aSpeed, 
    		TRemConCoreApiButtonAction aButtonAct);

    	/**
    	A 'tune function' command has been received.
    	@param aTwoPart If EFalse, only aMajorChannel is to be used. Otherwise, 
    	both aMajorChannel and aMinorChannel are to be used.
    	@param aMajorChannel The major channel number.
    	@param aMinorChannel The minor channel number.
    	@param aButtonAct The button action associated with the command.
    	*/
    	virtual void MrccatoTuneFunction(TBool aTwoPart, 
    		TUint aMajorChannel, 
    		TUint aMinorChannel,
    		TRemConCoreApiButtonAction aButtonAct);

    	/** 
    	A 'select disk function' has been received.
    	@param aDisk The disk.
    	@param aButtonAct The button action associated with the command.
    	*/
    	virtual void MrccatoSelectDiskFunction(TUint aDisk,
    		TRemConCoreApiButtonAction aButtonAct);
    	
    	/** 
    	A 'select AV input function' has been received.
    	@param aAvInputSignalNumber The AV input.
    	@param aButtonAct The button action associated with the command.
    	*/
    	virtual void MrccatoSelectAvInputFunction(TUint8 aAvInputSignalNumber,
    		TRemConCoreApiButtonAction aButtonAct);

    	/** 
    	A 'select audio input function' has been received.
    	@param aAudioInputSignalNumber The audio input.
    	@param aButtonAct The button action associated with the command.
    	*/
    	virtual void MrccatoSelectAudioInputFunction(TUint8 aAudioInputSignalNumber,
    		TRemConCoreApiButtonAction aButtonAct);
        void GenerateEvent(int keycode, int pressed);
    protected:
        CRemoteCtrlEventMonitor();
        void ConstructL();      
        int MapRemoteCtrlKey(TRemConCoreApiOperationId aOp);        
    private:
        CRemConInterfaceSelector* iInterfaceSelector;
        CRemConCoreApiTarget*     iCoreTarget;
        CRemConEventTimer* iCancelTimers[2];
    };

#endif
