#include <stdlib.h>
#include <stdio.h>
#include <eikenv.h>
#include <apgcli.h>
#include <e32keys.h>
#include <eikapp.h>
#include <apgtask.h>
#include <bautils.h>
#include <eikdoc.h>
#include <s32file.h>
#include <string.h>
#include <ctype.h>

#include "SDLSXXView.h"
#include "sdlapp.h"
#include "sdl_main.h"
#include "SDL_epocvideo.h"
#include "SDL_epocevents_c.h"
#include "ebasicapp.h"
#include "SDL_Keyboard.h"

#ifdef __SERIES60_3X__
#include <coefont.h>

const TInt16 KKeyboardConstantsMiniCtrl[18] =
{
		EStdKeyNkpAsterisk, -1,
		EStdKeyEnter, -1,
		EStdKeySpace, -1,
		EStdKeyEscape, -1,
		EStdKeyNo, EStdKeyNo,
		EStdKeyDictaphonePlay, EStdKeyDictaphonePlay,
		EStdKeyDictaphoneStop,EStdKeyDictaphoneStop,
		EStdKeyHash, '#',
		EStdKeyKeyboardExtend, -1
};

// Two TInt16 for each virtual key to get those diagonals
const TInt16 KDiagonalConstantsCtrl[36] =
{
		EStdKeyUpArrow, EStdKeyLeftArrow, EStdKeyUpArrow, -1, EStdKeyUpArrow, EStdKeyRightArrow, //1
		EStdKeyLeftArrow, -1, EStdKeyNkpAsterisk, -1, EStdKeyRightArrow, -1, //2
		EStdKeyDownArrow, EStdKeyLeftArrow, EStdKeyDownArrow, -1, EStdKeyDownArrow, EStdKeyRightArrow, //3
		EStdKeyEnter, -1, EStdKeySpace, -1 , EStdKeyHash, -1, //4
		EStdKeyEscape, -1,EStdKeyDictaphoneStop, EStdKeyDictaphoneStop ,EStdKeyNo, EStdKeyNo, //5
		EStdKeyYes, EStdKeyYes,  EStdKeyNumLock, -1,  EStdKeyDictaphoneRecord, -1 //6
};

// Two TInt16 for each virtual key to get those diagonals
const TInt16 KNumericConstantsCtrl[36] =
{
		'1', -1, '2', -1, '3', -1, //1
		'4', -1, '5', -1, '6', -1, //2
		'7', -1, '8', -1, '9', -1, //3
		EStdKeyNkpAsterisk, -1, '0', -1 , EStdKeyHash, -1, //4
        EStdKeyEscape, -1,EStdKeyLeftFunc, EStdKeyRightFunc ,EStdKeyNo, EStdKeyNo, //5
		EStdKeyYes, EStdKeyYes, EStdKeyNumLock, -1,  EStdKeyDictaphoneRecord, -1 //6
};

const char* KKeyboardSettings[36] =
		{
		"FN", "POR", "FLP",
		"<->", "MODE", "1:1",
		"KEY", "CUR", "JOY",
		"*", "MOU", "#",
		"ESC","FN", ""
		"CTL", "",""
		};


const TInt16 KKeyboardConstantsKeyb[84] = // 3x8 array
{
		 'Q', -1, 'W', -1, 'E', -1, 'R', -1, 'T', -1, 'Y', -1, //1
		 'U', -1, 'I', -1, 'O', -1, 'P', -1, '[', -1, ']', -1, //2
		 'A', -1, 'S', -1, 'D', -1, 'F', -1, 'G', -1, 'H', -1, //3
		 'J', -1, 'K', -1, 'L', -1, ',', -1, '.', -1, '*', -1, //4
		 'Z', -1, 'X', -1, 'C', -1, 'V', -1, 'B', -1, 'N', -1, //5
		 'M', -1, EStdKeySpace, -1, EStdKeyEnter, -1, '-', -1, '+', -1,'/', -1, //6
		 EStdKeyCapsLock, -1, '\\', -1, EStdKeyBackspace, -1, //7
		 EStdKeyKeyboardExtend, -1,  EStdKeyNo, EStdKeyNo, EStdKeyDictaphonePlay, EStdKeyDictaphonePlay //8
};

#endif //__SERIES60_3X__

CEBasicView::~CEBasicView()
{
	iDsa->Cancel();
	delete iDsa;
#ifdef __SERIES60_3X__
	delete iTouchKeys;
	iClipRegion.Close();
#endif
}

#ifdef __SERIES60_3X__
void CEBasicView::UpdateVirtualKeyboard()
	{
	if(current_video != NULL)
		{
		TUint32 pos = 0;
		iTouchKeys->Reset();
		TKeyboardData keyData;
		const TInt16* keyboardConstantsCtrl = (current_video->hidden->iNumLockOn || current_video->hidden->iControlKeyDown)?KNumericConstantsCtrl:KDiagonalConstantsCtrl;
		if(current_video->hidden->iVKBState == EDisplayControls)
		{
			TSize keySize = TSize(current_video->hidden->iKeyboardRect.Size().iWidth/3, current_video->hidden->iKeyboardRect.Size().iHeight/6);
			TRect controlRect;
			for(TInt y= 0;y<3;y++)
				for(TInt x = 0;x<3;x++)
					{
					keyData.iScanCode1 = keyboardConstantsCtrl[pos];
					keyData.iScanCode2 = keyboardConstantsCtrl[pos+1];

					keyData.iKeyRect = TRect(TPoint(current_video->hidden->iKeyboardRect.iTl)+TSize(x*keySize.iWidth, y*keySize.iHeight), keySize);
					if(keyData.iScanCode2 == -1) {
						switch(keyData.iScanCode1)
							{
							case EStdKeyUpArrow:
								controlRect.iTl.iY = keyData.iKeyRect.iTl.iY;
								break;
							case EStdKeyDownArrow:
								controlRect.iBr.iY = keyData.iKeyRect.iBr.iY;
								break;
							case EStdKeyLeftArrow:
								controlRect.iTl.iX = keyData.iKeyRect.iTl.iX;
								break;
							case EStdKeyRightArrow:
								controlRect.iBr.iX = keyData.iKeyRect.iBr.iX;
								break;
							default:
								break;
							}
					}
					iTouchKeys->AppendL(keyData);
					pos+=2;
					}

			iControlSize = 	controlRect.Size();
			iControlCenter = controlRect.iTl + TSize(iControlSize.iWidth/2, iControlSize.iHeight/2);
			iControlRect = controlRect;
			for(TInt y= 3;y<6;y++)
				for(TInt x = 0;x<3;x++)
				{
					keyData.iScanCode1 = keyboardConstantsCtrl[pos];
					keyData.iScanCode2 = keyboardConstantsCtrl[pos+1];

					keyData.iKeyRect = TRect(TPoint(current_video->hidden->iKeyboardRect.iTl)+TSize(x*keySize.iWidth, y*keySize.iHeight), keySize);
					iTouchKeys->AppendL(keyData);
					pos+=2;
				}
		}
		else if (current_video->hidden->iVKBState == EDisplayKeys)
		{
			TSize keySize = TSize(current_video->hidden->iKeyboardRect.Size().iWidth/3, current_video->hidden->iKeyboardRect.Size().iHeight/8);
			for(TInt y= 0;y<6;y++)
				for(TInt x = 0;x<3;x++)
				{
					keyData.iScanCode1 = KKeyboardConstantsKeyb[pos];
					keyData.iScanCode2 = KKeyboardConstantsKeyb[pos+1];
					keyData.iKeyRect = TRect(TPoint(current_video->hidden->iKeyboardRect.iTl)+TSize(x*keySize.iWidth, y*keySize.iHeight), TSize(keySize.iWidth/2, keySize.iHeight));
					iTouchKeys->AppendL(keyData);
					pos+=2;
					keyData.iScanCode1 = KKeyboardConstantsKeyb[pos];
					keyData.iScanCode2 = KKeyboardConstantsKeyb[pos+1];
					keyData.iKeyRect =  TRect(TPoint(current_video->hidden->iKeyboardRect.iTl)+TSize(x*keySize.iWidth+keySize.iWidth/2, y*keySize.iHeight), TSize(keySize.iWidth/2, keySize.iHeight));
					iTouchKeys->AppendL(keyData);
					pos+=2;
				}

			for(TInt y= 6;y<8;y++)
				for(TInt x = 0;x<3;x++)
				{
					keyData.iScanCode1 = KKeyboardConstantsKeyb[pos];
					keyData.iScanCode2 = KKeyboardConstantsKeyb[pos+1];

					keyData.iKeyRect = TRect(TPoint(current_video->hidden->iKeyboardRect.iTl)+TSize(x*keySize.iWidth, y*keySize.iHeight), keySize);
					iTouchKeys->AppendL(keyData);
					pos+=2;
				}
		}
		else // EDisplayMiniControls
			{
			for(TInt key = 0;key<9;key++)
				{
				keyData.iScanCode1 = KKeyboardConstantsMiniCtrl[pos];
				keyData.iScanCode2 = KKeyboardConstantsMiniCtrl[pos+1];

				if(current_video->hidden->iKeyboardRect.Size().iWidth<current_video->hidden->iKeyboardRect.Size().iHeight)
					{
					TSize keySize = TSize(current_video->hidden->iKeyboardRect.Size().iWidth, current_video->hidden->iKeyboardRect.Size().iHeight/9);
					keyData.iKeyRect = TRect(TPoint(current_video->hidden->iKeyboardRect.iTl)+TSize(0, key*keySize.iHeight), keySize);
					}
				else
					{
					TSize keySize = TSize(current_video->hidden->iKeyboardRect.Size().iWidth/9, current_video->hidden->iKeyboardRect.Size().iHeight);
					keyData.iKeyRect = TRect(TPoint(current_video->hidden->iKeyboardRect.iTl)+TSize(key*keySize.iWidth, 0), keySize);
					}

				iTouchKeys->AppendL(keyData);
				pos+=2;
				}
			}
			UpdateClipRect();
			if(iDrawingOn) {
				iDsa->Gc()->CancelClipping();
				DrawVKeyBoard(*iDsa->Gc());
			} else {
				ActivateGc();
				CWindowGc& gc = SystemGc();
				DrawVKeyBoard(gc);
				DeactivateGc();
				}
			}
		}
#endif

#if defined (__SERIES60_3X__)
void CEBasicView::UpdateClipRect()
{
	if(current_video != NULL && current_video->hidden != NULL && current_video->hidden->iStretchSize != TSize(0,0))
	{
		TInt correctForButton = current_video->hidden->iHasMouseOrTouch? current_video->hidden->iActivateButtonSize:0;
		TRect rect = (current_video->hidden->iSX0Mode & ESX0Portrait)?
			         TRect(current_video->hidden->iVKBOffset,TSize(current_video->hidden->iStretchSize.iWidth,current_video->hidden->iStretchSize.iHeight)):
		             TRect(current_video->hidden->iVKBOffset,TSize(current_video->hidden->iStretchSize.iHeight,current_video->hidden->iStretchSize.iWidth));


		iClipRect = rect;
		if(correctForButton != 0 && !current_video->hidden->iVirtualKeyBoardActive)
		{
			iToggleVKBStateRect = TRect(Size().iWidth-correctForButton, Size().iHeight-correctForButton, Size().iWidth, Size().iHeight);
		}
		else
		{
			iToggleVKBStateRect = TRect();
		}
		iClipRegion.Clear();
		iClipRegion.AddRect(iClipRect);
		iDsa->Gc()->CancelClippingRect();
		iDsa->Gc()->SetClippingRegion(iClipRegion);
	}
}
#endif

#ifdef S90
const TInt KEscape[48]={0,0,0,2,0,2,4,2,4,2,4,-1,
						0,4,0,6,0,6,2,6,2,6,2,4,
						2,4,4,4,4,4,4,7,0,8,0,10,
						0,10,4,10,2,10,2,8,4,10,4,7};
#endif

void CEBasicView::Draw(const TRect& aRect) const
{

	CWindowGc & gc=SystemGc();
#if defined  (S80) || defined (S90)
	gc.SetBrushColor(KRgbBlack);
	gc.Clear(aRect);
#endif
	if(current_video != NULL)
	{
		current_video->hidden->iNeedFullRedraw=ETrue;
		TRect realRect( TRect(TPoint(0,0), current_video->hidden->EPOC_DisplaySize));
		gc.BitBlt(current_video->hidden->iVKBOffset, current_video->hidden->EPOC_Bitmap,realRect);
	}
#if defined (S60) || defined (__SERIES60_3X__)
		DrawScreenStatus(gc);
#ifdef __SERIES60_3X__
		DrawVKeyBoard(gc);
#endif

#elif defined (S90)
	DrawVKeyBoard(gc);
	DrawCharSelector(gc);
#endif // S60, __SERIES60_3X__
	if(current_video != NULL)
		current_video->hidden->iNeedFullRedraw=ETrue;
}

void CEBasicView::ConstructL()
{
	CreateWindowL();
	ActivateL();
#ifdef ADVANCED_POINTERS
	Window().EnableAdvancedPointers();
#endif
	SetFocus(ETrue);
	SetRect(TRect(TPoint(0,0),iEikonEnv->ScreenDevice()->SizeInPixels()));
	iDsa=CDirectScreenAccess::NewL(iEikonEnv->WsSession(),*iEikonEnv->ScreenDevice(),Window(),*this);
	iDsa->StartL();
	iDsa->Gc()->SetClippingRegion(iDsa->DrawingRegion());
	iDrawingOn=ETrue;
	EnableDragEvents();

	Window().PointerFilter(EPointerFilterMove, 0);
	ClaimPointerGrab(ETrue);
	if(Window().DisplayMode() != EColor4K && Window().DisplayMode() != EColor64K)
	{
		Window().SetRequiredDisplayMode(EColor64K); // Try to set 64K color mode
	}
#ifdef __SERIES60_3X__
	iTouchKeys = new (ELeave) CArrayFixFlat<TKeyboardData>(5);
#endif
}

#ifdef __SERIES60_3X__
void CEBasicView::DrawVKeyBoard(CBitmapContext& aGc) const
{
	if(current_video &&  current_video->hidden)
	{
		if(current_video->hidden->iHasMouseOrTouch && !current_video->hidden->iVirtualKeyBoardActive)
		{
			aGc.SetPenColor(KRgbGray);
			aGc.SetBrushStyle(CGraphicsContext::ENullBrush);
			aGc.SetPenStyle(CGraphicsContext::ESolidPen);
			aGc.DrawRect(TRect(Rect().iBr-TSize(current_video->hidden->iActivateButtonSize,current_video->hidden->iActivateButtonSize), TSize(current_video->hidden->iActivateButtonSize, current_video->hidden->iActivateButtonSize)));
		}
		else if(current_video->hidden->iKeyboardRect.Size() != TSize(0,0) && iTouchKeys->Count() > 0)
		{
			aGc.CancelClippingRect();
			TBuf<16> format;
			const CFont* usedFont = &ScreenFont(TCoeFont::LegendFont());
			TInt baseLine = usedFont->BaselineOffsetInPixels();
			baseLine = usedFont->FontMaxHeight();
			aGc.UseFont(usedFont);
			if(!(current_video->hidden->iSX0Mode & ESX0InvisibleUI))
			{
			aGc.SetBrushStyle(CGraphicsContext::ESolidBrush);
			aGc.SetBrushColor(KRgbBlack);
			aGc.Clear(current_video->hidden->iKeyboardRect);
			}
			aGc.SetPenStyle(CGraphicsContext::ESolidPen);
			aGc.SetBrushStyle(CGraphicsContext::ENullBrush);
			for(TInt loop = iTouchKeys->Count()-1; loop>=0;loop--)
			{
				aGc.SetPenColor(KRgbGray);
				aGc.DrawRect((*iTouchKeys)[loop].iKeyRect);
				aGc.SetPenColor(KRgbWhite);
				format = KNullDesC();
				if((*iTouchKeys)[loop].iScanCode1 >32 && (*iTouchKeys)[loop].iScanCode1 < 0x60)
				{
					TUint value = (*iTouchKeys)[loop].iScanCode1;
					TChar charac(value);

					if(charac.IsAlpha() && !(SDL_GetModState() & KMOD_CAPS) && !current_video->hidden->iShiftOn)
					{
						value = charac.GetLowerCase();
					}

					if(charac.IsDigit() && current_video->hidden->iFNModeOn)
					{
						if(charac == '0')
							{
							format = _L("F10");
							}
						else
							{
							format.Format(_L("F%d"), charac.GetNumericValue());
							}
					}
					else
					{
						format.Format(_L("%c"), value);
					}
				}
				else
				{
					switch((*iTouchKeys)[loop].iScanCode1)
					{
					case EStdKeyLeftFunc:
						format = _L("FNC");
						break;
					case EStdKeyNumLock:
						if(current_video->hidden->iNumLockOn)
						{
						format = _L("CUR");
						}
						else
						{
						format = _L("NUM");
						}
						break;
					case EStdKeyCapsLock:
					case EStdKeyLeftShift:
						format = _L("CAP");
						break;
					case EStdKeySpace:
						format = _L("SPC");
						break;
					case EStdKeyEnter:
						format = _L("<-|");
						break;
					case EStdKeyEscape:
						format = _L("ESC");
						break;
					case EStdKeyTab:
						format = _L("TAB");
						break;
				    case EStdKeyNkpAsterisk:
					case '*':
						if(current_video->hidden->iMouseButtonSet == ENoMouseButton)
							{
							format = _L("LFT");
							}
						else
							{
							format = _L("*");
							}
						break;
					case EStdKeyKeyboardExtend:
						{
						format=_L("<o>");
						}break;
					case '#':
					case EStdKeyHash:
						{
						if(current_video->hidden->iMouseButtonSet == ENoMouseButton)
							{
							format = _L("RGT");
							}
						else
							{
							format = _L("#");
							}
						}break;
					case EStdKeyNo:
						switch(current_video->hidden->iMouseButtonSet)
						{
						case ELeftMouseButton:
							format = _L("*-");
							break;
						case ERightMouseButton:
							format = _L("-*");
							break;
						case ENoMouseButton:
							format = _L("--");
							break;
						case EFlipMouseButton:
							format = _L("<>");
							break;
						default:
							break;
						}
						break;
						case EStdKeyYes:
							aGc.SetPenColor(KRgbGreen);
							format = _L("CTL");
							break;
						case EStdKeyDictaphonePlay:
							format = _L("CUR");
							break;
						case EStdKeyDictaphoneStop:
							format = _L("ABC");
							break;
						case EStdKeyDictaphoneRecord:
							format = _L("MIN");
							break;
						case EStdKeyBackspace:
							format = _L("<--");
							break;
						case EStdKeyUpArrow:
							if((*iTouchKeys)[loop].iScanCode2 == -1)
							{
								format = _L("^");
							}
							else if((*iTouchKeys)[loop].iScanCode2 == EStdKeyLeftArrow)
							{
								format = _L("\\");
							}
							else
							{
								format = _L("/");
							}
							break;
						case EStdKeyDownArrow:
							if((*iTouchKeys)[loop].iScanCode2 == -1)
							{
								format = _L("v");
							}
							else if((*iTouchKeys)[loop].iScanCode2 == EStdKeyLeftArrow)
							{
								format = _L("/");
							}
							else
							{
								format = _L("\\");
							}
							break;
						case EStdKeyLeftArrow:
							format = _L("<");
							break;
						case EStdKeyRightArrow:
							format = _L(">");
							break;
					}
				}

				aGc.DrawText(format, (*iTouchKeys)[loop].iKeyRect, baseLine, CGraphicsContext::ECenter);
			}
			iDsa->Gc()->SetClippingRect(iClipRect);
			aGc.DiscardFont();
		}
		aGc.SetBrushStyle(CGraphicsContext::ENullBrush);
	}
}
#endif

void CEBasicView::PutBitmap(CFbsBitmap* aBitmap,TPoint aPoint,TRect aRect)
{
	if(iDrawingOn)
	{
		iDsa->Gc()->BitBlt(aPoint+current_video->hidden->iVKBOffset,aBitmap,aRect);
		current_video->hidden->iCursorPos = TPoint();
#ifdef __SERIES60_3X__
		if(current_video->hidden->iHasMouseOrTouch && !current_video->hidden->iVirtualKeyBoardActive && aRect.Intersects(iToggleVKBStateRect))
				{
				iDsa->Gc()->SetPenColor(KRgbGray);
				iDsa->Gc()->SetBrushStyle(CGraphicsContext::ENullBrush);
				iDsa->Gc()->SetPenStyle(CGraphicsContext::ESolidPen);
				iDsa->Gc()->DrawRect(iToggleVKBStateRect);
				}
		else if((current_video->hidden->iSX0Mode & ESX0InvisibleUI) &&& current_video->hidden->iHasMouseOrTouch && current_video->hidden->iVirtualKeyBoardActive)
			{
			DrawVKeyBoard(*iDsa->Gc());
			}
#endif
		UpdateMouseCursor();
		current_video->hidden->iWasUpdated = ETrue;
	}
}

#if defined (S60) || defined (__SERIES60_3X__)
void CEBasicView::DrawScreenStatus(CBitmapContext& aGc) const
{
	if(current_video != NULL)
	{
		if(current_video->hidden->iInputMode ==EKeyboard)
		{
			const CFont* fnt = iEikonEnv->DenseFont();
#ifdef __SERIES60_3X__
			TInt heightInPixels = fnt->HeightInPixels()+fnt->FontMaxDescent();
#else
			TInt heightInPixels = fnt->HeightInPixels()+fnt->DescentInPixels();
#endif
			TInt maxNormalCharWidth = fnt->MaxCharWidthInPixels();
			if(maxNormalCharWidth == 0)
				maxNormalCharWidth = 18;

			TRect box;
			TInt statusLength = 1;

			if(current_video->hidden->iSX0Mode  & ESX0Portrait)
			{
				box = TRect(TPoint(0,0),TSize(statusLength*maxNormalCharWidth,heightInPixels));
			}
			else
			{
				box = TRect(TPoint(0,current_video->hidden->iStretchSize.iHeight-maxNormalCharWidth),TSize(heightInPixels,statusLength*maxNormalCharWidth));
			}

			aGc.SetBrushStyle(CGraphicsContext::ESolidBrush);
			aGc.SetBrushColor(KRgbBlack);
			aGc.Clear(box);
			aGc.UseFont(fnt);
			aGc.SetPenStyle(CGraphicsContext::ESolidPen);
			aGc.SetPenColor(KRgbWhite);
			TBuf<16> charBuf;
			charBuf.Format(_L("%c"),current_video->hidden->iCurrentChar.operator TUint());
#ifdef __SERIES60_3X__
			if(current_video->hidden->iSX0Mode & ESX0Portrait)
#endif
			{
				aGc.DrawText(charBuf,box,heightInPixels-fnt->DescentInPixels(),CGraphicsContext::ECenter);
			}
#ifdef __SERIES60_3X__
			else
			{
				aGc.DrawTextVertical(charBuf,box.iTl+TPoint(heightInPixels-fnt->DescentInPixels(), maxNormalCharWidth-2), ETrue);
			}
#endif
			aGc.DiscardFont();
		}
		else if(current_video->hidden->iInputModeTimer>0)
		{
		const CFont* fnt = iEikonEnv->DenseFont();
#ifdef __SERIES60_3X__
				TInt heightInPixels = fnt->HeightInPixels()+fnt->FontMaxDescent();
#else
				TInt heightInPixels = fnt->HeightInPixels()+fnt->DescentInPixels();
#endif
				TInt maxNormalCharWidth = fnt->MaxCharWidthInPixels();
				if(maxNormalCharWidth == 0)
					maxNormalCharWidth = 18;

				TRect box;
				TInt statusLength = current_video->hidden->iStatusChar.Length();

				if(current_video->hidden->iSX0Mode  & ESX0Portrait)
				{
					box = TRect(TPoint(0,0),TSize(statusLength*maxNormalCharWidth,heightInPixels));
				}
				else
				{
					box = TRect(TPoint(0,current_video->hidden->iStretchSize.iHeight-maxNormalCharWidth),TSize(heightInPixels,statusLength*maxNormalCharWidth));
				}

			aGc.SetBrushStyle(CGraphicsContext::ESolidBrush);
			aGc.SetBrushColor(KRgbBlack);
			aGc.BitBlt(box.iTl, current_video->hidden->EPOC_Bitmap, box);
			aGc.SetBrushStyle(CGraphicsContext::ENullBrush);
			if(--current_video->hidden->iInputModeTimer)
			{
				aGc.UseFont(fnt);
				aGc.SetPenColor(KRgbRed);
				aGc.SetPenStyle(CGraphicsContext::ESolidPen);
				if(current_video->hidden->iKeyboardModifier)
				{
					aGc.SetPenColor(KRgbYellow);
				}
#ifdef __SERIES60_3X__
				if(!(current_video->hidden->iSX0Mode & ESX0Portrait))
				{
					aGc.DrawTextVertical(current_video->hidden->iStatusChar,box.iTl+TPoint(heightInPixels-fnt->DescentInPixels(), maxNormalCharWidth-2), ETrue);
				}
				else
#endif
					aGc.DrawText(current_video->hidden->iStatusChar,box,heightInPixels-fnt->DescentInPixels(),CGraphicsContext::ECenter);

				aGc.DiscardFont();
			}
			else
			{
				current_video->hidden->iNeedFullRedraw=ETrue;
			}
		}

		if(current_video->hidden->iControlKeyDown)
		{
			const CFont* fnt = iEikonEnv->DenseFont();
			aGc.UseFont(fnt);
			aGc.SetPenColor(KRgbGreen);
#ifdef __SERIES60_3X__
			if(!(current_video->hidden->iSX0Mode & ESX0Portrait))
				aGc.DrawTextVertical(_L("CTRL") ,TPoint(64,current_video->hidden->iStretchSize.iWidth-3),ETrue);
			else
#endif
				aGc.DrawText(_L("CTRL") ,TPoint(3,64));
			aGc.DiscardFont();
		}
	}
}
#endif

#ifndef EPOC_AS_APP
void Execute()
	{
	__UHEAP_MARK;
	CTrapCleanup* cleanup = CTrapCleanup::New();

	// Create a eikenv
	CEikonEnv* eikenv = new CEikonEnv;
	if (!eikenv)
		{
		return /*KErrNoMemory*/;
		}
	TRAPD(eikErr, eikenv->ConstructL());
	if (eikErr != KErrNone)
		{
		delete eikenv;
		return /*eikErr*/;
		}
	CEBasicAppUi* appUi = new (ELeave) CEBasicAppUi;
	if (!appUi)
		{
		delete eikenv;
		return /*KErrNoMemory*/;
		}

	TRAPD(constructErr,appUi->ConstructL());

	eikenv->SetAppUi(appUi);	// passing ownership of appUi to coe

	TInt leaveValue = KErrNone;
	if (leaveValue != KErrNone)
		{
			delete eikenv;
		}
	else
	{
		// now accept request from clients (start the scheduler)
		eikenv->ExecuteD();
	}

	delete cleanup;

	__UHEAP_MARKEND;
}

//ARM build

GLDEF_C TInt E32Main()
	{
	Execute();
	return KErrNone;
	}
#if defined(__WINS__)

EXPORT_C TInt WinsMain()
	{
	E32Main();
	return KErrNone;
	}
#endif
#endif

#if defined(__SERIES60_3X__)
extern "C" void EPOC_GenerateKeyEvent(_THIS,int aScanCode,int aIsDown, TBool aShiftOn);
enum TKeysBits
	{
	EUP = 1,
	EDOWN = 2,
	ERIGHT = 4,
	ELEFT = 8,
	};


TBool CEBasicView::TouchPointerEventL(const TPointerEvent& aPointerEvent)
	{
	if(current_video->hidden->iVKBState != EDisplayControls)
		return EFalse;
	
	// the user wants to control the game
	TBool isDown = EFalse;
	TBool newkeyevent = EFalse;
	TInt key = 0;

	if (aPointerEvent.iType == TPointerEvent::EButton1Down
			|| aPointerEvent.iType == TPointerEvent::EDrag)
		{
		if (iControlRect.Contains(aPointerEvent.iPosition))
			{
			key = GetGameKeys(aPointerEvent.iPosition);
			//if new key is pressed
			if (key != iSimulatedKey)
				{
				//release the old key
				SimulateKeyEvent(iSimulatedKey, EFalse);
				iSimulatedKey = key;
				newkeyevent = ETrue;
				}
			isDown = ETrue;
			}

		}

	//the control is released release all buttons
	if (aPointerEvent.iType == TPointerEvent::EButton1Up && iSimulatedKey != 0)
		{
		isDown = EFalse;

		key = iSimulatedKey;
		newkeyevent = ETrue;
		iSimulatedKey = 0;
		}

	if (newkeyevent)
		{
		SimulateKeyEvent(key, isDown);
		return ETrue;
		}
	return EFalse;
}

void CEBasicView::SimulateKeyEvent(TInt aKey, TBool aIsDown)
	{
	if (aKey & EDOWN)
		{
		EPOC_GenerateKeyEvent(current_video, EStdKeyDownArrow, aIsDown, current_video->hidden->iShiftOn);
		}
	if (aKey & EUP)
		{
		EPOC_GenerateKeyEvent(current_video, EStdKeyUpArrow, aIsDown, current_video->hidden->iShiftOn);
		}
	if (aKey & ERIGHT)
		{
		EPOC_GenerateKeyEvent(current_video, EStdKeyRightArrow, aIsDown, current_video->hidden->iShiftOn);
		}
	if (aKey & ELEFT)
		{
		EPOC_GenerateKeyEvent(current_video, EStdKeyLeftArrow, aIsDown, current_video->hidden->iShiftOn);
		}
	}

#include <e32math.h>

/**
 * GetGameKeys
 * This function calculates the sector of circle and return
 * corresponding keys.
 * @param aCurrentPos the clicked postion
 * @return keys pressed
 */
TInt CEBasicView::GetGameKeys(TPoint aCurrentPos)
	{
	//Calculate distance from the center
	TInt x = aCurrentPos.iX - iControlCenter.iX;
	TInt y = aCurrentPos.iY - iControlCenter.iY;

	TReal r;
	Math::ATan(r, y, x);
	r = (r * 180 )/ KPi; //convert radians to degrees

	//lets use full circle instead of negative angles
	if (r < 0)
		{
		r = 360 + r;
		}

	TInt32 angle;
	Math::Int(angle, r);

	TInt key = 0;

	//360 degrees is divided into 8 sectors.
	if (angle > 337 || angle < 23)
		{
		//right key was pressed
		key += ERIGHT;
		}
	else
		if (angle >= 23 && angle < 68)
			{
			//right and down was pressed
			key += ERIGHT;
			key += EDOWN;
			}
		else
			if (angle >= 68 && angle < 113)
				{
				//Down key was pressed
				key += EDOWN;
				}
			else
				if (angle >= 113 && angle < 158)
					{
					//Down and left key was pressed
					key += EDOWN;
					key += ELEFT;
					}
				else
					if (angle >= 158 && angle < 203)
						{
						//Left key was pressed
						key += ELEFT;
						}
					else
						if (angle >= 203 && angle < 248)
							{
							//left and up key was pressed
							key += ELEFT;
							key += EUP;
							}
						else
							if (angle >= 248 && angle < 293)
								{
								//up key was pressed
								key += EUP;
								}
							else
								if (angle >= 293 && angle <= 337)
									{
									//up and right key was pressed
									key += EUP;
									key += ERIGHT;
									}
	return key;
	}
#endif
