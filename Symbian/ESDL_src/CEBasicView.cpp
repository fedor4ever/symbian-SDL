
#if defined(S60) || defined(S80) || defined(S90) || defined(__S60_3X__)
#include "SDLSXXView.h"
#else
#include "UIQxBasicView.h"
#endif

#include "SDL_epocvideo.h"

void MouseCursorScaleFactor(TReal& xscale, TReal& yscale);

#ifndef UIQ
void CEBasicView::ClearScreen()
{
	if(iDrawingOn)
	{
		iDsa->Gc()->CancelClippingRect();
		iDsa->Gc()->SetBrushColor(KRgbBlack);
		iDsa->Gc()->Clear();
		iDsa->Gc()->SetClippingRegion(iClipRegion);
	}
}
#endif

#ifndef UIQ
void CEBasicView::UpdateScreen()
{
	if(iDrawingOn)
	{
#if defined (S60) || defined (S60V3)
		DrawScreenStatus(*iDsa->Gc());		
#endif
#ifdef S90
		if(current_video != NULL)
		{				
			if(current_video->hidden->iInputModeTimer>0)
			{
				iDsa->Gc()->SetBrushColor(KRgbWhite);			  

				current_video->hidden->iInputModeTimer--;			
				TBuf<1> inputType = current_video->hidden->iInputMode == EJoystick?_L("J"):_L("C");
				iDsa->Gc()->UseFont(iEikonEnv->DenseFont());
				iDsa->Gc()->SetPenColor(KRgbRed);
				iDsa->Gc()->DrawText(inputType,TPoint(3,14));

				iDsa->Gc()->DiscardFont();
				if(current_video->hidden->iInputModeTimer==0)
				{
					iDsa->Gc()->SetBrushColor(KRgbBlack);
					iDsa->Gc()->Clear();
					current_video->hidden->iNeedFullRedraw=ETrue;
				}
			}
		}
#endif		    
		iDsa->ScreenDevice()->Update();
	}
}
#endif

#ifndef UIQ
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
#endif

#ifndef UIQ
void CEBasicView::AbortNow(RDirectScreenAccess::TTerminationReasons /*aReason*/)
{
	iDrawingOn=EFalse;
	iDsa->Cancel();
#ifdef UIQ3 // TODO: check impact to S60 port
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

#ifndef UIQ
void CEBasicView::UpdateMouseCursor()
{
	if(!iDrawingOn || (current_video->hidden->iCursor == NULL) || (SDL_ShowCursor(-1) != 1) )
		return;

	CWsBitmap* cursorBitmap = NULL;
	CWsBitmap* cursorMask = NULL;

	TPoint pos;
	SDL_GetMouseState(&pos.iX, &pos.iY);
	TPoint orgPos = pos;

	TReal xscale;
	TReal yscale;
	MouseCursorScaleFactor(xscale, yscale);

	if(current_video->hidden->iSX0Mode & ESX0Portrait)
	{
		pos.iX = (TInt)(xscale*pos.iX);
		pos.iY= (TInt)(yscale*pos.iY);

		cursorBitmap = current_video->hidden->iCursor->iCursorPBitmap;
		cursorMask = current_video->hidden->iCursor->iCursorPMask;
	} else
	{
		TInt offset = 0;
		if(current_video->hidden->iSX0Mode & ESX0Flipped)
		{
			cursorBitmap = current_video->hidden->iCursor->iCursorLFBitmap;
			cursorMask = current_video->hidden->iCursor->iCursorLFMask;
#ifndef UIQ3
			offset = cursorBitmap->SizeInPixels().iWidth;
#endif
			pos.iY = (TInt)(xscale*orgPos.iX);
			pos.iX= (TInt)(current_video->hidden->iStretchSize.iHeight-(yscale*orgPos.iY + offset));
		}
		else
		{
			cursorBitmap = current_video->hidden->iCursor->iCursorLBitmap;
			cursorMask = current_video->hidden->iCursor->iCursorLMask;
#ifndef UIQ3
			offset = cursorBitmap->SizeInPixels().iHeight;
#endif
			pos.iY = (TInt)(current_video->hidden->iStretchSize.iWidth-(xscale*orgPos.iX + offset));
			pos.iX= (TInt)(yscale*orgPos.iY);
		}
	}

	TSize sze = cursorBitmap->SizeInPixels();
	if(!(current_video->hidden->iSX0Mode & ESX0Stretched))
	{
		pos-=current_video->hidden->iPutOffset;
	}

	if(pos != current_video->hidden->iCursorPos)
	{
#ifndef UIQ3
		TPoint offset = current_video->hidden->iVKBOffset;
#else
		TPoint offset = TPoint();
#endif
		iDsa->Gc()->BitBlt(current_video->hidden->iCursorPos + offset, current_video->hidden->EPOC_Bitmap, TRect(current_video->hidden->iCursorPos, sze));
		iDsa->Gc()->BitBltMasked(pos + offset, cursorBitmap, TRect(sze), cursorMask, EFalse);
		current_video->hidden->iCursorPos = pos;
	}
}
#endif

void MouseCursorScaleFactor(TReal& xscale, TReal& yscale)
{
#ifndef UIQ3
	if(current_video->hidden->iSX0Mode & ESX0Stretched)
	{
#endif
		xscale = current_video->hidden->iXScale;
		yscale = current_video->hidden->iYScale;
#ifndef UIQ3
	} else {
		xscale = 1;
		yscale = 1;
	}
#endif
}
