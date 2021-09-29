#ifdef S90

#include "SDLSXXView.h"

void CEBasicView::DrawVKeyBoard(CWindowGc& aGc) const
{
	aGc.SetBrushColor(KRgbBlack);
	aGc.SetBrushStyle(CGraphicsContext::ESolidBrush);
	TInt base=Size().iHeight-16;

	aGc.Clear(TRect(TPoint(0,base),TSize(Size().iWidth,16)));

	aGc.SetPenColor(KRgbWhite);
	// Extra button
	aGc.DrawRect(TRect(TPoint(0,base),TSize(28,16)));

	if(current_video && current_video->hidden->iVirtualKeyBoardActive)
	{
		aGc.DrawRect(TRect(TPoint(96,base),TSize(28,16))); // outerline
		aGc.DrawLine(TPoint(10+96,base+2),TPoint(10+96,base+6));
		aGc.DrawLine(TPoint(10+96,base+5),TPoint(4+96,base+5)); //enter

		// Draw Left upper
		aGc.DrawRect(TRect(TPoint(160,base),TSize(28,16)));
		aGc.DrawLine(TPoint(9+160,base+1+3),TPoint(2+160,base+3+3)); // arrow
		aGc.DrawLine(TPoint(2+160,base+3+3),TPoint(9+160,base+6+3));

		// Draw right arrow
		aGc.DrawRect(TRect(TPoint(608,base),TSize(28,16)));
		aGc.DrawLine(TPoint(608+6,base+1+3),TPoint(608+13,base+3+3)); // arrow
		aGc.DrawLine(TPoint(608+13,base+3+3),TPoint(608+6,base+6+3));

		// Draw delete buton
		aGc.DrawRect(TRect(TPoint(128,base),TSize(28,16)));
		aGc.DrawLine(TPoint(8+128,base+1+3),TPoint(2+128,base+3+3)); // arrow
		aGc.DrawLine(TPoint(2+128,base+3+3),TPoint(8+128,base+6+3));
		aGc.DrawLine(TPoint(2+128,base+6),TPoint(18+128,base+6));
	}

	// Draw cfg button
	aGc.DrawRect(TRect(TPoint(64,base),TSize(28,16)));
	for(TInt loop=0;loop<12;loop++)
	{
		aGc.DrawLine(TPoint(KEscape[loop*4+1]+66,KEscape[loop*4]+base+1),	 TPoint(KEscape[loop*4+3]+66,KEscape[loop*4+2]+base+1));
	}

	aGc.DrawRect(TRect(TPoint(32,base),TSize(28,16)));

	if(current_video && current_video->hidden->iMouseButtonSet == ERightMouseButton)
	{
		aGc.SetBrushColor(KRgbWhite);
		aGc.DrawRect(TRect(TPoint(48,base+2),TSize(4,4)));
	}
	else if(current_video && current_video->hidden->iMouseButtonSet == ELeftMouseButton)
	{
		aGc.SetBrushColor(KRgbBlack);
		aGc.DrawRect(TRect(TPoint(48,base+2),TSize(4,4)));
	}
}

void CEBasicView::UpdateDSA()
{
	if(current_video == NULL) return;
	if(current_video->hidden->iInputModeTimer < 0) return;

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

void CEBasicView::DrawCharSelector(CWindowGc& aGc) const
{
	if(current_video && current_video->hidden->iVirtualKeyBoardActive)
	{
		aGc.SetPenColor(KRgbWhite);
		aGc.SetBrushColor(KRgbBlack);
		aGc.UseFont(iEikonEnv->DenseFont());
		TInt fntHeight= iEikonEnv->DenseFont()->HeightInPixels();
		TInt base=Size().iHeight-16;
		TInt charWidth=0;
		for(TInt chr=0;chr<13;chr++)
		{
			TRect charRect( TPoint(192+chr*32,base),TSize(28,16));
			aGc.DrawRect(charRect);
			aGc.SetClippingRect(charRect);
			if(chr+iLetterOffset<KOnScreenChars().Length())
			{
				TBuf<2>chrbuf=KOnScreenChars().Mid(chr+iLetterOffset,1);
				charWidth=iEikonEnv->AnnotationFont()->CharWidthInPixels(chrbuf[0]);
				aGc.DrawText(chrbuf,TPoint(206+chr*32-(charWidth/2),base+15));
			}
			aGc.CancelClippingRect();
		}
		aGc.DiscardFont();
	}
}

#endif //S90
