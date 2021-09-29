#ifndef SDLSXXAPPH
#define SDLSXXAPPH

#if defined(S60) || defined(S80) || defined(S90) || defined(__S60_3X__)
	#include <e32base.h>
	#include <eikappui.h>
	#include <coecntrl.h>

#ifdef __S60_3X__
class TKeyboardData
	{
public:
	TRect iKeyRect;
	TInt16 iScanCode1;
	TInt16 iScanCode2;
	};
#endif

class CEBasicView: public CCoeControl, public MDirectScreenAccess
	{
	public:
		CEBasicView() {
#ifdef S90
			iLetterOffset=0;
#endif
		};
		~CEBasicView();
		void Draw(const TRect& aRect) const;
		void ConstructL();
		void PutBitmap(CFbsBitmap* aBitmap,TPoint aPoint,TRect aRect);
		void UpdateMouseCursor();
		void UpdateScreen();
		void Restart(RDirectScreenAccess::TTerminationReasons aReason);
		void AbortNow(RDirectScreenAccess::TTerminationReasons aReason);
		void SetAppUi(TUid aUid){iAppUid=aUid;};
		void ActGc(){ActivateGc();};
		void DeGc(){DeactivateGc();};
		void ClearScreen();

#if defined(S60) || defined(__S60_3X__)
	public:
		void DrawScreenStatus(CBitmapContext& aGc) const;
#ifdef __S60_3X__
		void UpdateClipRect();
		void DrawVKeyBoard(CBitmapContext& aGc) const;
		void UpdateVirtualKeyboard();
		TInt GetGameKeys(TPoint aCurrentPos);
		void SimulateKeyEvent(TInt aKey, TBool aIsDown);
		TBool TouchPointerEventL(const TPointerEvent& aPointerEvent);
		TPoint iControlCenter;
		TSize iControlSize;
		TRect iControlRect;
		TInt iSimulatedKey;
#endif
#endif // defined(S60) || defined(__S60_3X__)

		RWindow& Win() const {return Window();};
#ifdef S90
	public:
		void UpdateCharSelector(TInt aLetterOffset);
		void DrawCharSelector(CWindowGc& aGc) const;
		TInt iLetterOffset;
		void UpdateVKeyBoard();
		void DrawVKeyBoard(CWindowGc& aGc) const;
		void UpdateDSA();
#endif

//	private: //TODO: Make them private
		CDirectScreenAccess* iDsa;
		TBool iDrawingOn;
		TBool iForeground;
		TUid iAppUid;
#ifdef __S60_3X__
		CArrayFixFlat<TKeyboardData>* iTouchKeys;
		TRect iToggleVKBStateRect;
#endif
		RRegion iClipRegion;
		TRect iClipRect;
	};
#endif
#endif
