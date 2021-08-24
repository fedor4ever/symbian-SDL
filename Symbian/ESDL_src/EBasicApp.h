#ifndef EBasicAPP
#define EBasicAPP

#include <coecntrl.h>
#include <coeview.h>
#include <eikapp.h>
#include <e32base.h>

#if defined (__SERIES60_3X__)
class CRemoteCtrlEventMonitor;
#endif

_LIT(KOnScreenChars," .ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz");
const TInt KNoOnScreenKeys = 12;
const TInt KScreenKeysOffset = 112;
const TInt KScreenKeySize = 16;

#if defined(UIQ) || defined(UIQ3)
#include <qikappui.h>
#include <qikdocument.h>
typedef CQikAppUi    BaseAppUi_t;
typedef CQikDocument BaseDocument_t;
#elif defined(S60) || defined(__SERIES60_3X__)
#include <akndoc.h>
#include <aknappUI.h>
typedef CAknAppUi    BaseAppUi_t;
typedef CAknDocument BaseDocument_t;
#else
#include <eikdoc.h>
#include <eikappui.h>
typedef CEikAppUi    BaseAppUi_t;
typedef CEikDocument BaseDocument_t;
#endif


#include "IniFile.h"

// so we can access the config from anywhere
#define Configuration	static_cast<CEBasicAppUi*>(CEikonEnv::Static()->EikAppUi())->Config()
#define TheBasicAppUi	static_cast<CEBasicAppUi*>(CEikonEnv::Static()->EikAppUi())
struct SDL_VideoDevice;
struct SDL_AudioDevice;


class CEBasicDoc: public BaseDocument_t
{
public:
	~CEBasicDoc();
	virtual CEikAppUi* CreateAppUiL();
	CEBasicDoc(CEikApplication& aApp);
	void SaveL(MSaveObserver::TSaveType aSaveType);

private:
	void ConstructL();
};

class CEBasicView;

class CEBasicAppUi: public BaseAppUi_t
{
	public:
		CEBasicAppUi();
		~CEBasicAppUi();
		void ConstructL();
		void DoExit();
		void HandleCommandL(TInt aCommand);
		CEBasicView* View(){return iView;};
		void DoExitNext(){iExitNext=ETrue;};
		void HandleWsEventL(const TWsEvent& aEvent, CCoeControl* aDestination);
		static TInt StaticSDLStartL(TAny* aAppUi);
		static void symbian_at_exit();
		void SDLStartL();
		void DrawView();
		virtual TKeyResponse HandleKeyEventL(const TKeyEvent& aKeyEvent,TEventCode aType);
		void HandleForegroundEventL(TBool aForeground);
		void SetConfig();
		void GetConfig(SDL_VideoDevice* aDevice);
		CIniFile* Config() { return iConfig; }
		TFileName GetExecutablePath() { return iExecutablePath; }
		char* GetExecutablePathCStr() { return (char*)&iExecutablePathCStr; }

#ifdef UIQ3
		void LaunchSettingsDialogL();
#endif

#if defined (S60) || defined(__SERIES60_3X__) || defined(UIQ3)
		TKeyResponse HandleControlKeyKeysL(const TKeyEvent& aKeyEvent,TEventCode aType);
		void HandleScreenDeviceChangedL();
		void UpdateInputState();

#if defined(S60) || defined(__SERIES60_3X__)
		void SetKeyBlockMode(TAknKeyBlockMode aMode);

#ifdef 	__SERIES60_3X__
	CRemoteCtrlEventMonitor* iRemoteCtrlMonitor;

#endif
#endif
#endif // defined (S60) || defined(__SERIES60_3X__) || defined(UIQ3)
		void ReleaseMultitapKeysL();
		void UpdateAndRedrawScreenL();
	protected:
		void SetExecutablePathL();
		TKeyResponse HandleMultiTapInput(const TKeyEvent& aKeyEvent,TEventCode aType);
		void UpdateScreenOffset(TInt aKeyCode);

#ifdef UIQ
	protected:
		/**
		 * Capture special Application keys
		 */
		void CaptureKeysL();

		/**
		 *Cancels any captured Keys
		 */
		void CancelCaptureKeys();
		TInt32 iCapKey1;
		TInt32 iCapKey2;
		TInt32 iCapKey3;
		TInt32 iCapKey4;
		TInt32 iCapKey5;

		TInt32 iCapKey1b;
		TInt32 iCapKey2b;
		TInt32 iCapKey3b;
		TInt32 iCapKey4b;
		TInt32 iCapKey5b;
#endif
	private:
		TBool iExitNext;
		CEBasicView* iView;
		CAsyncCallBack iSDLstart;
		TBool iWasControlEvent;

		CIniFile* iConfig;
		TFileName iExecutablePath;
		char iExecutablePathCStr[KMaxFileName];
		char* iExecutableParams[1];
		static TInt StaticMultitapTimeoutL(TAny* aAppUi);
		void MultitapTimeoutL();

		CPeriodic* iMultitapTimer;
		RArray<TChar>		iReleaseKeys;
		TBool iTapTimerReleased;
		TBool iIntialTap;
};
#endif

