#ifndef UIQXBASICVIEWH
#define UIQXBASICVIEWH

#if defined(UIQ) || defined(UIQ3)

#ifdef UIQ3
#include <qikviewbase.h>
typedef MDirectScreenAccess MInterface_t ;
typedef CQikViewBase Control_t;
#else
typedef MCoeView MInterface_t ;
typedef CCoeControl Control_t;
#endif //UIQ3

class CEBasicView : public Control_t, public MInterface_t
{
public:
#ifdef UIQ3
	CEBasicView(CQikAppUi& aAppUi);
#else
	CEBasicView();
#endif
	
public:
	~CEBasicView();
	void SetAppUi(TUid aUid){iAppUid=aUid;};
	void ActGc(){ActivateGc();};
	void DeGc(){DeactivateGc();};
	RWindow& Win() const {return Window();};
	void ConstructL(const TRect& aRect);
	void Draw(const TRect& aRect) const;
	TCoeInputCapabilities InputCapabilities() const;
	void SetInputState(TBool aOnOff);
	TVwsViewId ViewId() const;
	virtual void ViewActivatedL(const TVwsViewId& aPrevViewId,TUid aCustomMessageId,const TDesC8& aCustomMessage);
	virtual void ViewDeactivated();
	void UpdateCharSelector(TInt aLetterOffset);
	void UpdateVKeyBoard();
	void DrawVKeyBoard(CWindowGc& aGc) const;
	void DrawCharSelector(CWindowGc& aGc) const;
	void SetCurrentMultiTapKey(TInt aKey);
	TInt iXOffSet;
	TBool iInputState;
	TDisplayMode iDispMode;         ///< Display mode for screen.
	TUid iAppUid;
	TInt iLetterOffset;
	
public:
	void SizeChanged();
	TRect iWantedRect;
	TBool iForeground;
	TPoint iBitOffset;
	
#ifdef UIQ3
	void Restart(RDirectScreenAccess::TTerminationReasons aReason); //done
	void UpdateClipRect(); //d
	void AbortNow(RDirectScreenAccess::TTerminationReasons aReason);
	void ClearScreen();
	void PutBitmap(CFbsBitmap* aBitmap,TPoint aPoint,TRect aRect);
	void UpdateScreen();
	void UpdateMouseCursor();

	TKeyResponse OfferKeyEventL(const TKeyEvent& aKeyEvent,TEventCode aType);
	/**
	Inherited from CQikViewBase and called upon by the UI Framework.
	It creates the views with command from resource.
	*/
	void ViewConstructL();

	CDirectScreenAccess* iDsa;
	TBool iDrawingOn;
#endif
};

#endif

#endif // UIQXBASICVIEWH
