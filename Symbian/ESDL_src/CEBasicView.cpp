
#if defined(S60) || defined(S80) || defined(S90) || defined(__S60_3X__)
#include "SXXView.h"
#else //
#include "UIQxBasicView.h"
#endif


#ifndef UIQ
void CEBasicView::Restart(RDirectScreenAccess::TTerminationReasons /*aReason*/)
{
	if(iForeground)
	{
		iDsa->Cancel();
		iDsa->StartL();
		UpdateClipRect();
		iDrawingOn=ETrue;
#ifndef UIQ3
		ClearScreen();
		UpdateVirtualKeyboard();
#endif
#if defined (S60) || defined (__S60_3X__)
		static_cast<CEBasicAppUi*>(iEikonEnv->EikAppUi())->SetKeyBlockMode(ENoKeyBlock);
#endif
	}
}

void CEBasicView::AbortNow(RDirectScreenAccess::TTerminationReasons /*aReason*/)
{
	iDrawingOn=EFalse;
	iDsa->Cancel();
#ifdef(UIQ3) // TODO: check impact to S60 port
	if(current_video != NULL)
	{
		current_video->hidden->iNeedFullRedraw=ETrue;
	}
#endif
}
#endif

#if defined(S90) || defined(UIQ) || defined(UIQ3)
void CEBasicView::UpdateCharSelector(TInt aLetterOffset)
{
	iLetterOffset=aLetterOffset;
	ActivateGc();
	CWindowGc& gc = SystemGc();
	gc.SetPenColor(KRgbWhite);
	gc.SetBrushColor(KRgbBlack);
	gc.SetBrushStyle(CGraphicsContext::ESolidBrush);
	DrawCharSelector(gc);
	DeactivateGc();
}

void CEBasicView::UpdateVKeyBoard()
{
	ActivateGc();
	CWindowGc& gc = SystemGc();
	gc.SetPenColor(KRgbWhite);
	gc.SetBrushColor(KRgbBlack);
	gc.SetBrushStyle(CGraphicsContext::ESolidBrush);
	DrawVKeyBoard(gc);
	DrawCharSelector(gc);
	DeactivateGc();
}
#endif

