PATH=\UIQ3\epoc32\tools\;C:\Program\CSL Arm Toolchain\arm-none-symbianelf\bin;C:\Program\CSL Arm Toolchain\bin;\uiq3\epoc32\tools\;\uiq3\epoc32\gcc\bin\;C:\windows\system32;C:\windows;C:\windows\System32\Wbem;C:\Program Files\ATI Technologies\ATI Control Panel;C:\Program Files\Common Files\Adaptec Shared\System;C:\Perl\bin;\uiq3\epoc32\tools;C:\MSVC6\VC98\Bin;\UIQ3\epoc32\tools\nokia_compiler\Symbian_Tools\Command_Line_Tools;C:\Program\CSL Arm Toolchain\libexec\gcc\arm-none-symbianelf\3.4.3
Path=$(PATH)
COMPILER_PATH="\UIQ3\epoc32\tools\nokia_compiler\Symbian_Tools\Command_Line_Tools\"

# CWD \SDL-1.2.13\Symbian\UIQ3\
# MMPFile \SDL-1.2.13\Symbian\UIQ3\esdl_uiq3.MMP
# Target ESDL.lib
# TargetType LIB
# BasicTargetType LIB
# MakefileType GNU

ERASE = @erase 2>>nul

# EPOC DEFINITIONS

EPOCBLD = \UIQ3\EPOC32\BUILD\SDL-1.2.13\Symbian\UIQ3\esdl_uiq3\WINSCW
EPOCTRG = \UIQ3\EPOC32\RELEASE\WINSCW
EPOCLIB = \UIQ3\EPOC32\RELEASE\WINSCW
EPOCLINK = \UIQ3\EPOC32\RELEASE\WINSCW
EPOCSTATLINK = \UIQ3\EPOC32\RELEASE\WINSCW
EPOCASSPLINK = \UIQ3\EPOC32\RELEASE\WINSCW
EPOCDATA = \UIQ3\EPOC32\DATA
EPOCINC = \UIQ3\EPOC32\INCLUDE
TRGDIR = 
DATADIR = Z\System\Data

EPOCBLDUDEB = $(EPOCBLD)\UDEB
EPOCTRGUDEB = $(EPOCTRG)\UDEB
EPOCLIBUDEB = $(EPOCLIB)\UDEB
EPOCLINKUDEB = $(EPOCLINK)\UDEB
EPOCSTATLINKUDEB = $(EPOCSTATLINK)\UDEB
EPOCASSPLINKUDEB = $(EPOCASSPLINK)\UDEB

EPOCBLDUREL = $(EPOCBLD)\UREL
EPOCTRGUREL = $(EPOCTRG)\UREL
EPOCLIBUREL = $(EPOCLIB)\UDEB
EPOCLINKUREL = $(EPOCLINK)\UDEB
EPOCSTATLINKUREL = $(EPOCSTATLINK)\UREL
EPOCASSPLINKUREL = $(EPOCASSPLINK)\UDEB

# EPOC PSEUDOTARGETS

UDEB : MAKEWORKUDEB RESOURCEUDEB

UREL : MAKEWORKUREL RESOURCEUREL

ALL : UDEB UREL

CLEAN CLEANALL : CLEANBUILD CLEANRELEASE CLEANLIBRARY



WHAT WHATALL : WHATUDEB WHATUREL

RESOURCE RESOURCEALL : RESOURCEUDEB RESOURCEUREL

CLEANBUILD CLEANBUILDALL : CLEANBUILDUDEB CLEANBUILDUREL

CLEANRELEASE CLEANRELEASEALL : CLEANRELEASEUDEB CLEANRELEASEUREL

MAKEWORK MAKEWORKALL : MAKEWORKUDEB MAKEWORKUREL

LISTING LISTINGALL : LISTINGUDEB LISTINGUREL

MAKEWORK : MAKEWORKLIBRARY

RESOURCEUDEB RESOURCEUREL : GENERIC_RESOURCE


MWCIncludes:=$(MWCSym2Includes)
export MWCIncludes


MWLibraries:=+\UIQ3\epoc32\tools\nokia_compiler\Symbian_Support\Runtime\Runtime_x86\Runtime_Win32\Libs;\UIQ3\epoc32\tools\nokia_compiler\Symbian_Support\Win32-x86 Support\Libraries\Win32 SDK
export MWLibraries


MWLibraryFiles:=gdi32.lib;user32.lib;kernel32.lib;
export MWLibraryFiles

# EPOC DEFINITIONS

INCDIR  = -cwd source -i- \
 -i "\SDL-1.2.13\Symbian" \
 -i "\SDL-1.2.13\include" \
 -i "\SDL-1.2.13\src" \
 -i "\SDL-1.2.13\src\video" \
 -i "\SDL-1.2.13\src\video\symbian" \
 -i "\SDL-1.2.13\src\events" \
 -i "\SDL-1.2.13\src\main\symbian" \
 -i "\SDL-1.2.13\src\thread" \
 -i "\SDL-1.2.13\src\thread\generic" \
 -i "\SDL-1.2.13\src\thread\symbian" \
 -i "\SDL-1.2.13\src\timer" \
 -i "\SDL-1.2.13\src\joystick" \
 -i "\SDL-1.2.13\src\cdrom" \
 -i "\SDL-1.2.13\src\audio" \
 -i "\SDL-1.2.13\src\audio\symbian" \
 -i "\UIQ3\EPOC32\include" \
 -i "\UIQ3\EPOC32\include\libc" \
 -i "\UIQ3\epoc32\include\variant"\
 -i "\UIQ3\epoc32\include\variant\ " -include "UIQ_3.0.hrh"

CWFLAGS = -wchar_t off -align 4 -warnings on -w nohidevirtual,nounusedexpr -enum int -str pool -exc ms  -nostdinc

CWDEFS  =  -d "__SYMBIAN32__" -d "__CW32__" -d "__WINS__" -d "__WINSCW__" -d "UIQ3" -d "NO_SIGNAL_H" -d "__SUPPORT_CPP_EXCEPTIONS__" $(USERDEFS)

CWUDEB = perl -S err_formatter.pl $(COMPILER_PATH)mwccsym2.exe -msgstyle parseable  -sym codeview -inline off $(CWFLAGS) -d _DEBUG -d _UNICODE $(CWDEFS) $(INCDIR)
CWUREL = perl -S err_formatter.pl $(COMPILER_PATH)mwccsym2.exe -msgstyle parseable  -O4,s $(CWFLAGS) -d NDEBUG -d _UNICODE $(CWDEFS) $(INCDIR)


UDEB : \
	$(EPOCTRGUDEB)\ESDL.lib

UREL : \
	$(EPOCTRGUREL)\ESDL.lib


RESOURCEUDEB : MAKEWORKUDEB

RESOURCEUREL : MAKEWORKUREL



# REAL TARGET - LIBRARY

LIBRARY : MAKEWORKLIBRARY UDEB UREL

FREEZE :

CLEANLIBRARY :

GENERIC_RESOURCE : GENERIC_MAKEWORK

# REAL TARGET - BUILD VARIANT UDEB

WHATUDEB : WHATGENERIC

CLEANUDEB : CLEANBUILDUDEB CLEANRELEASEUDEB

CLEANBUILDUDEB : 
	@perl -S ermdir.pl "$(EPOCBLDUDEB)"

CLEANRELEASEUDEB : CLEANGENERIC


UDEB_RELEASEABLES1= \
	$(EPOCTRGUDEB)\ESDL.lib

WHATUDEB:
	@echo $(UDEB_RELEASEABLES1)

CLEANRELEASEUDEB:
	-$(ERASE) $(UDEB_RELEASEABLES1)



LISTINGUDEB : MAKEWORKUDEB \
	LISTINGUDEBEBasicApp \
	LISTINGUDEBIniFile \
	LISTINGUDEBSDL \
	LISTINGUDEBSDL_error \
	LISTINGUDEBSDL_fatal \
	LISTINGUDEBSDL_cpuinfo \
	LISTINGUDEBSDL_cdrom \
	LISTINGUDEBSDL_syscdrom \
	LISTINGUDEBSDL_audio \
	LISTINGUDEBSDL_audiocvt \
	LISTINGUDEBSDL_audiodev \
	LISTINGUDEBSDL_mixer \
	LISTINGUDEBSDL_wave \
	LISTINGUDEBSDL_SymbianAudio \
	LISTINGUDEBSDL_blit \
	LISTINGUDEBSDL_blit_0 \
	LISTINGUDEBSDL_blit_1 \
	LISTINGUDEBSDL_blit_A \
	LISTINGUDEBSDL_blit_N \
	LISTINGUDEBSDL_bmp \
	LISTINGUDEBSDL_cursor \
	LISTINGUDEBSDL_gamma \
	LISTINGUDEBSDL_pixels \
	LISTINGUDEBSDL_RLEaccel \
	LISTINGUDEBSDL_stretch \
	LISTINGUDEBSDL_surface \
	LISTINGUDEBSDL_video \
	LISTINGUDEBSDL_yuv \
	LISTINGUDEBSDL_yuv_sw \
	LISTINGUDEBSDL_epocvideo \
	LISTINGUDEBSDL_epocevents \
	LISTINGUDEBSDL_thread \
	LISTINGUDEBSDL_syscond \
	LISTINGUDEBSDL_sysmutex \
	LISTINGUDEBSDL_syssem \
	LISTINGUDEBSDL_systhread \
	LISTINGUDEBSDL_active \
	LISTINGUDEBSDL_events \
	LISTINGUDEBSDL_keyboard \
	LISTINGUDEBSDL_mouse \
	LISTINGUDEBSDL_quit \
	LISTINGUDEBSDL_resize \
	LISTINGUDEBSDL_timer \
	LISTINGUDEBSDL_systimer \
	LISTINGUDEBSDL_rwops \
	LISTINGUDEBSDL_joystick \
	LISTINGUDEBSDL_SysJoystick \
	LISTINGUDEBSDL_getenv \
	LISTINGUDEBSDL_iconv \
	LISTINGUDEBSDL_malloc \
	LISTINGUDEBSDL_qsort \
	LISTINGUDEBSDL_stdlib \
	LISTINGUDEBSDL_string

LIBSUDEB=

LINK_OBJSUDEB= \
	$(EPOCBLDUDEB)\EBasicApp.o \
	$(EPOCBLDUDEB)\IniFile.o \
	$(EPOCBLDUDEB)\SDL.o \
	$(EPOCBLDUDEB)\SDL_error.o \
	$(EPOCBLDUDEB)\SDL_fatal.o \
	$(EPOCBLDUDEB)\SDL_cpuinfo.o \
	$(EPOCBLDUDEB)\SDL_cdrom.o \
	$(EPOCBLDUDEB)\SDL_syscdrom.o \
	$(EPOCBLDUDEB)\SDL_audio.o \
	$(EPOCBLDUDEB)\SDL_audiocvt.o \
	$(EPOCBLDUDEB)\SDL_audiodev.o \
	$(EPOCBLDUDEB)\SDL_mixer.o \
	$(EPOCBLDUDEB)\SDL_wave.o \
	$(EPOCBLDUDEB)\SDL_SymbianAudio.o \
	$(EPOCBLDUDEB)\SDL_blit.o \
	$(EPOCBLDUDEB)\SDL_blit_0.o \
	$(EPOCBLDUDEB)\SDL_blit_1.o \
	$(EPOCBLDUDEB)\SDL_blit_A.o \
	$(EPOCBLDUDEB)\SDL_blit_N.o \
	$(EPOCBLDUDEB)\SDL_bmp.o \
	$(EPOCBLDUDEB)\SDL_cursor.o \
	$(EPOCBLDUDEB)\SDL_gamma.o \
	$(EPOCBLDUDEB)\SDL_pixels.o \
	$(EPOCBLDUDEB)\SDL_RLEaccel.o \
	$(EPOCBLDUDEB)\SDL_stretch.o \
	$(EPOCBLDUDEB)\SDL_surface.o \
	$(EPOCBLDUDEB)\SDL_video.o \
	$(EPOCBLDUDEB)\SDL_yuv.o \
	$(EPOCBLDUDEB)\SDL_yuv_sw.o \
	$(EPOCBLDUDEB)\SDL_epocvideo.o \
	$(EPOCBLDUDEB)\SDL_epocevents.o \
	$(EPOCBLDUDEB)\SDL_thread.o \
	$(EPOCBLDUDEB)\SDL_syscond.o \
	$(EPOCBLDUDEB)\SDL_sysmutex.o \
	$(EPOCBLDUDEB)\SDL_syssem.o \
	$(EPOCBLDUDEB)\SDL_systhread.o \
	$(EPOCBLDUDEB)\SDL_active.o \
	$(EPOCBLDUDEB)\SDL_events.o \
	$(EPOCBLDUDEB)\SDL_keyboard.o \
	$(EPOCBLDUDEB)\SDL_mouse.o \
	$(EPOCBLDUDEB)\SDL_quit.o \
	$(EPOCBLDUDEB)\SDL_resize.o \
	$(EPOCBLDUDEB)\SDL_timer.o \
	$(EPOCBLDUDEB)\SDL_systimer.o \
	$(EPOCBLDUDEB)\SDL_rwops.o \
	$(EPOCBLDUDEB)\SDL_joystick.o \
	$(EPOCBLDUDEB)\SDL_SysJoystick.o \
	$(EPOCBLDUDEB)\SDL_getenv.o \
	$(EPOCBLDUDEB)\SDL_iconv.o \
	$(EPOCBLDUDEB)\SDL_malloc.o \
	$(EPOCBLDUDEB)\SDL_qsort.o \
	$(EPOCBLDUDEB)\SDL_stdlib.o \
	$(EPOCBLDUDEB)\SDL_string.o

COMMON_LINK_FLAGSUDEB= -stdlib -subsystem windows


LINK_FLAGSUDEB= $(COMMON_LINK_FLAGSUDEB) $(LIBSUDEB) \
	 -o "$(EPOCTRGUDEB)\ESDL.lib" -noimplib

$(EPOCTRGUDEB)\ESDL.lib : $(LINK_OBJSUDEB)  $(LIBSUDEB)
	$(COMPILER_PATH)mwldsym2.exe -msgstyle gcc -library $(LINK_FLAGSUDEB) -l $(EPOCBLDUDEB) -search $(notdir $(LINK_OBJSUDEB))


# REAL TARGET - BUILD VARIANT UREL

WHATUREL : WHATGENERIC

CLEANUREL : CLEANBUILDUREL CLEANRELEASEUREL

CLEANBUILDUREL : 
	@perl -S ermdir.pl "$(EPOCBLDUREL)"

CLEANRELEASEUREL : CLEANGENERIC


UREL_RELEASEABLES1= \
	$(EPOCTRGUREL)\ESDL.lib

WHATUREL:
	@echo $(UREL_RELEASEABLES1)

CLEANRELEASEUREL:
	-$(ERASE) $(UREL_RELEASEABLES1)



LISTINGUREL : MAKEWORKUREL \
	LISTINGURELEBasicApp \
	LISTINGURELIniFile \
	LISTINGURELSDL \
	LISTINGURELSDL_error \
	LISTINGURELSDL_fatal \
	LISTINGURELSDL_cpuinfo \
	LISTINGURELSDL_cdrom \
	LISTINGURELSDL_syscdrom \
	LISTINGURELSDL_audio \
	LISTINGURELSDL_audiocvt \
	LISTINGURELSDL_audiodev \
	LISTINGURELSDL_mixer \
	LISTINGURELSDL_wave \
	LISTINGURELSDL_SymbianAudio \
	LISTINGURELSDL_blit \
	LISTINGURELSDL_blit_0 \
	LISTINGURELSDL_blit_1 \
	LISTINGURELSDL_blit_A \
	LISTINGURELSDL_blit_N \
	LISTINGURELSDL_bmp \
	LISTINGURELSDL_cursor \
	LISTINGURELSDL_gamma \
	LISTINGURELSDL_pixels \
	LISTINGURELSDL_RLEaccel \
	LISTINGURELSDL_stretch \
	LISTINGURELSDL_surface \
	LISTINGURELSDL_video \
	LISTINGURELSDL_yuv \
	LISTINGURELSDL_yuv_sw \
	LISTINGURELSDL_epocvideo \
	LISTINGURELSDL_epocevents \
	LISTINGURELSDL_thread \
	LISTINGURELSDL_syscond \
	LISTINGURELSDL_sysmutex \
	LISTINGURELSDL_syssem \
	LISTINGURELSDL_systhread \
	LISTINGURELSDL_active \
	LISTINGURELSDL_events \
	LISTINGURELSDL_keyboard \
	LISTINGURELSDL_mouse \
	LISTINGURELSDL_quit \
	LISTINGURELSDL_resize \
	LISTINGURELSDL_timer \
	LISTINGURELSDL_systimer \
	LISTINGURELSDL_rwops \
	LISTINGURELSDL_joystick \
	LISTINGURELSDL_SysJoystick \
	LISTINGURELSDL_getenv \
	LISTINGURELSDL_iconv \
	LISTINGURELSDL_malloc \
	LISTINGURELSDL_qsort \
	LISTINGURELSDL_stdlib \
	LISTINGURELSDL_string

LIBSUREL=

LINK_OBJSUREL= \
	$(EPOCBLDUREL)\EBasicApp.o \
	$(EPOCBLDUREL)\IniFile.o \
	$(EPOCBLDUREL)\SDL.o \
	$(EPOCBLDUREL)\SDL_error.o \
	$(EPOCBLDUREL)\SDL_fatal.o \
	$(EPOCBLDUREL)\SDL_cpuinfo.o \
	$(EPOCBLDUREL)\SDL_cdrom.o \
	$(EPOCBLDUREL)\SDL_syscdrom.o \
	$(EPOCBLDUREL)\SDL_audio.o \
	$(EPOCBLDUREL)\SDL_audiocvt.o \
	$(EPOCBLDUREL)\SDL_audiodev.o \
	$(EPOCBLDUREL)\SDL_mixer.o \
	$(EPOCBLDUREL)\SDL_wave.o \
	$(EPOCBLDUREL)\SDL_SymbianAudio.o \
	$(EPOCBLDUREL)\SDL_blit.o \
	$(EPOCBLDUREL)\SDL_blit_0.o \
	$(EPOCBLDUREL)\SDL_blit_1.o \
	$(EPOCBLDUREL)\SDL_blit_A.o \
	$(EPOCBLDUREL)\SDL_blit_N.o \
	$(EPOCBLDUREL)\SDL_bmp.o \
	$(EPOCBLDUREL)\SDL_cursor.o \
	$(EPOCBLDUREL)\SDL_gamma.o \
	$(EPOCBLDUREL)\SDL_pixels.o \
	$(EPOCBLDUREL)\SDL_RLEaccel.o \
	$(EPOCBLDUREL)\SDL_stretch.o \
	$(EPOCBLDUREL)\SDL_surface.o \
	$(EPOCBLDUREL)\SDL_video.o \
	$(EPOCBLDUREL)\SDL_yuv.o \
	$(EPOCBLDUREL)\SDL_yuv_sw.o \
	$(EPOCBLDUREL)\SDL_epocvideo.o \
	$(EPOCBLDUREL)\SDL_epocevents.o \
	$(EPOCBLDUREL)\SDL_thread.o \
	$(EPOCBLDUREL)\SDL_syscond.o \
	$(EPOCBLDUREL)\SDL_sysmutex.o \
	$(EPOCBLDUREL)\SDL_syssem.o \
	$(EPOCBLDUREL)\SDL_systhread.o \
	$(EPOCBLDUREL)\SDL_active.o \
	$(EPOCBLDUREL)\SDL_events.o \
	$(EPOCBLDUREL)\SDL_keyboard.o \
	$(EPOCBLDUREL)\SDL_mouse.o \
	$(EPOCBLDUREL)\SDL_quit.o \
	$(EPOCBLDUREL)\SDL_resize.o \
	$(EPOCBLDUREL)\SDL_timer.o \
	$(EPOCBLDUREL)\SDL_systimer.o \
	$(EPOCBLDUREL)\SDL_rwops.o \
	$(EPOCBLDUREL)\SDL_joystick.o \
	$(EPOCBLDUREL)\SDL_SysJoystick.o \
	$(EPOCBLDUREL)\SDL_getenv.o \
	$(EPOCBLDUREL)\SDL_iconv.o \
	$(EPOCBLDUREL)\SDL_malloc.o \
	$(EPOCBLDUREL)\SDL_qsort.o \
	$(EPOCBLDUREL)\SDL_stdlib.o \
	$(EPOCBLDUREL)\SDL_string.o

COMMON_LINK_FLAGSUREL= -stdlib -subsystem windows


LINK_FLAGSUREL= $(COMMON_LINK_FLAGSUREL) $(LIBSUREL) \
	 -o "$(EPOCTRGUREL)\ESDL.lib" -noimplib

$(EPOCTRGUREL)\ESDL.lib : $(LINK_OBJSUREL)  $(LIBSUREL)
	$(COMPILER_PATH)mwldsym2.exe -msgstyle gcc -library $(LINK_FLAGSUREL) -l $(EPOCBLDUREL) -search $(notdir $(LINK_OBJSUREL))


# SOURCES

# Source EBasicApp.cpp

$(EPOCBLDUDEB)\EBasicApp.o \
$(EPOCBLDUREL)\EBasicApp.o \
: \
	\SDL-1.2.13\Symbian\EBasicApp.h \
	\SDL-1.2.13\Symbian\IniFile.h \
	\SDL-1.2.13\Symbian\ebasicapp.h \
	\SDL-1.2.13\Symbian\sdlapp.h \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_audio.h \
	\SDL-1.2.13\include\SDL_cdrom.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_cpuinfo.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_loadso.h \
	\SDL-1.2.13\include\SDL_main.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\include\sdl.h \
	\SDL-1.2.13\include\sdl_audio.h \
	\SDL-1.2.13\include\sdl_main.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\symbian\SDL_epocevents_c.h \
	\SDL-1.2.13\src\video\symbian\SDL_epocvideo.h \
	\UIQ3\EPOC32\include\Babitflags.h \
	\UIQ3\EPOC32\include\CoeLayoutMan.h \
	\UIQ3\EPOC32\include\Ecom\EComErrorCodes.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.inl \
	\UIQ3\EPOC32\include\Ecom\Ecom.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.inl \
	\UIQ3\EPOC32\include\FbsMessage.h \
	\UIQ3\EPOC32\include\LineBreak.h \
	\UIQ3\EPOC32\include\QUiConfigClient.h \
	\UIQ3\EPOC32\include\QikCategory.hrh \
	\UIQ3\EPOC32\include\QikCategoryModel.h \
	\UIQ3\EPOC32\include\QikCommand.hrh \
	\UIQ3\EPOC32\include\QikCommandManager.h \
	\UIQ3\EPOC32\include\QikContainer.h \
	\UIQ3\EPOC32\include\QikControlProvider.h \
	\UIQ3\EPOC32\include\QikDef.h \
	\UIQ3\EPOC32\include\QikFactories.h \
	\UIQ3\EPOC32\include\QikFlowLayoutManager.h \
	\UIQ3\EPOC32\include\QikLayoutManager.h \
	\UIQ3\EPOC32\include\QikLayoutValues.h \
	\UIQ3\EPOC32\include\QikUiConfigDataTypes.h \
	\UIQ3\EPOC32\include\QikViewFurniture.h \
	\UIQ3\EPOC32\include\Qikon.hrh \
	\UIQ3\EPOC32\include\apacmdln.h \
	\UIQ3\EPOC32\include\apadef.h \
	\UIQ3\EPOC32\include\apaflrec.h \
	\UIQ3\EPOC32\include\apaid.h \
	\UIQ3\EPOC32\include\apmstd.h \
	\UIQ3\EPOC32\include\apparc.h \
	\UIQ3\EPOC32\include\babitflags.h \
	\UIQ3\EPOC32\include\badesca.h \
	\UIQ3\EPOC32\include\baerrhan.h \
	\UIQ3\EPOC32\include\bamdesca.h \
	\UIQ3\EPOC32\include\barsc.h \
	\UIQ3\EPOC32\include\barsread.h \
	\UIQ3\EPOC32\include\basched.h \
	\UIQ3\EPOC32\include\bautils.h \
	\UIQ3\EPOC32\include\bidi.h \
	\UIQ3\EPOC32\include\biditext.h \
	\UIQ3\EPOC32\include\bitbase.h \
	\UIQ3\EPOC32\include\bitdev.h \
	\UIQ3\EPOC32\include\bitdev.inl \
	\UIQ3\EPOC32\include\bitmap.h \
	\UIQ3\EPOC32\include\bitstd.h \
	\UIQ3\EPOC32\include\coeaui.h \
	\UIQ3\EPOC32\include\coecntrl.h \
	\UIQ3\EPOC32\include\coecobs.h \
	\UIQ3\EPOC32\include\coecontrolarray.h \
	\UIQ3\EPOC32\include\coedef.h \
	\UIQ3\EPOC32\include\coefont.h \
	\UIQ3\EPOC32\include\coehelp.h \
	\UIQ3\EPOC32\include\coeinput.h \
	\UIQ3\EPOC32\include\coemain.h \
	\UIQ3\EPOC32\include\coemop.h \
	\UIQ3\EPOC32\include\coetextdrawer.h \
	\UIQ3\EPOC32\include\coeview.h \
	\UIQ3\EPOC32\include\d32locd.h \
	\UIQ3\EPOC32\include\d32locd.inl \
	\UIQ3\EPOC32\include\devicekeys.h \
	\UIQ3\EPOC32\include\e32base.h \
	\UIQ3\EPOC32\include\e32base.inl \
	\UIQ3\EPOC32\include\e32capability.h \
	\UIQ3\EPOC32\include\e32cmn.h \
	\UIQ3\EPOC32\include\e32cmn.inl \
	\UIQ3\EPOC32\include\e32const.h \
	\UIQ3\EPOC32\include\e32debug.h \
	\UIQ3\EPOC32\include\e32def.h \
	\UIQ3\EPOC32\include\e32des16.h \
	\UIQ3\EPOC32\include\e32des8.h \
	\UIQ3\EPOC32\include\e32err.h \
	\UIQ3\EPOC32\include\e32event.h \
	\UIQ3\EPOC32\include\e32hal.h \
	\UIQ3\EPOC32\include\e32keys.h \
	\UIQ3\EPOC32\include\e32ktran.h \
	\UIQ3\EPOC32\include\e32ldr.h \
	\UIQ3\EPOC32\include\e32lmsg.h \
	\UIQ3\EPOC32\include\e32notif.h \
	\UIQ3\EPOC32\include\e32std.h \
	\UIQ3\EPOC32\include\e32std.inl \
	\UIQ3\EPOC32\include\e32svr.h \
	\UIQ3\EPOC32\include\eikamnt.h \
	\UIQ3\EPOC32\include\eikapp.h \
	\UIQ3\EPOC32\include\eikappui.h \
	\UIQ3\EPOC32\include\eikaufty.h \
	\UIQ3\EPOC32\include\eikbctrl.h \
	\UIQ3\EPOC32\include\eikbtgrp.h \
	\UIQ3\EPOC32\include\eikcmobs.h \
	\UIQ3\EPOC32\include\eikcolor.hrh \
	\UIQ3\EPOC32\include\eikdef.h \
	\UIQ3\EPOC32\include\eikdgfty.h \
	\UIQ3\EPOC32\include\eikdoc.h \
	\UIQ3\EPOC32\include\eikenv.h \
	\UIQ3\EPOC32\include\eikfctry.h \
	\UIQ3\EPOC32\include\eiklibry.h \
	\UIQ3\EPOC32\include\eikmobs.h \
	\UIQ3\EPOC32\include\eikon.hrh \
	\UIQ3\EPOC32\include\eikprogi.h \
	\UIQ3\EPOC32\include\eikvcurs.h \
	\UIQ3\EPOC32\include\f32file.h \
	\UIQ3\EPOC32\include\f32file.inl \
	\UIQ3\EPOC32\include\fbs.h \
	\UIQ3\EPOC32\include\fldbase.h \
	\UIQ3\EPOC32\include\fldbltin.h \
	\UIQ3\EPOC32\include\fldinfo.h \
	\UIQ3\EPOC32\include\fldset.h \
	\UIQ3\EPOC32\include\fntstore.h \
	\UIQ3\EPOC32\include\frmlaydt.h \
	\UIQ3\EPOC32\include\frmparam.h \
	\UIQ3\EPOC32\include\frmtlay.h \
	\UIQ3\EPOC32\include\frmvis.h \
	\UIQ3\EPOC32\include\gdi.h \
	\UIQ3\EPOC32\include\gdi.inl \
	\UIQ3\EPOC32\include\graphicsaccelerator.h \
	\UIQ3\EPOC32\include\gulalign.h \
	\UIQ3\EPOC32\include\gulbordr.h \
	\UIQ3\EPOC32\include\gulcolor.h \
	\UIQ3\EPOC32\include\guldef.h \
	\UIQ3\EPOC32\include\gulftflg.hrh \
	\UIQ3\EPOC32\include\gulutil.h \
	\UIQ3\EPOC32\include\lafmain.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\reent.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\_types.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\sys\unistd.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\EPOC32\include\libc\unistd.h \
	\UIQ3\EPOC32\include\openfont.h \
	\UIQ3\EPOC32\include\partitions.h \
	\UIQ3\EPOC32\include\qikapplication.h \
	\UIQ3\EPOC32\include\qikappui.h \
	\UIQ3\EPOC32\include\qikcommand.h \
	\UIQ3\EPOC32\include\qikdocument.h \
	\UIQ3\EPOC32\include\qikon.hrh \
	\UIQ3\EPOC32\include\qikstockcontrols.hrh \
	\UIQ3\EPOC32\include\qiktoolbar.h \
	\UIQ3\EPOC32\include\qikviewbase.h \
	\UIQ3\EPOC32\include\qikviewswitcher.h \
	\UIQ3\EPOC32\include\quartz.mbg \
	\UIQ3\EPOC32\include\s32buf.h \
	\UIQ3\EPOC32\include\s32buf.inl \
	\UIQ3\EPOC32\include\s32file.h \
	\UIQ3\EPOC32\include\s32file.inl \
	\UIQ3\EPOC32\include\s32page.h \
	\UIQ3\EPOC32\include\s32page.inl \
	\UIQ3\EPOC32\include\s32share.h \
	\UIQ3\EPOC32\include\s32share.inl \
	\UIQ3\EPOC32\include\s32std.h \
	\UIQ3\EPOC32\include\s32std.inl \
	\UIQ3\EPOC32\include\s32stor.h \
	\UIQ3\EPOC32\include\s32stor.inl \
	\UIQ3\EPOC32\include\s32strm.h \
	\UIQ3\EPOC32\include\s32strm.inl \
	\UIQ3\EPOC32\include\savenotf.h \
	\UIQ3\EPOC32\include\tagma.h \
	\UIQ3\EPOC32\include\txtetext.h \
	\UIQ3\EPOC32\include\txtetext.inl \
	\UIQ3\EPOC32\include\txtfmlyr.h \
	\UIQ3\EPOC32\include\txtfmlyr.inl \
	\UIQ3\EPOC32\include\txtfmstm.h \
	\UIQ3\EPOC32\include\txtfrmat.h \
	\UIQ3\EPOC32\include\txtfrmat.inl \
	\UIQ3\EPOC32\include\txtstyle.h \
	\UIQ3\EPOC32\include\txtstyle.inl \
	\UIQ3\EPOC32\include\uikon.hrh \
	\UIQ3\EPOC32\include\vwsdef.h \
	\UIQ3\EPOC32\include\w32std.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\EBasicApp.o : \SDL-1.2.13\Symbian\EBasicApp.cpp
	echo EBasicApp.cpp
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\Symbian\EBasicApp.cpp"

LISTINGUDEBEBasicApp : $(EPOCBLDUDEB)\EBasicApp.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\Symbian\EBasicApp.WINSCW.lst

$(EPOCBLDUREL)\EBasicApp.o : \SDL-1.2.13\Symbian\EBasicApp.cpp
	echo EBasicApp.cpp
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\Symbian\EBasicApp.cpp"

LISTINGURELEBasicApp : $(EPOCBLDUREL)\EBasicApp.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\Symbian\EBasicApp.WINSCW.lst



# Source IniFile.cpp

$(EPOCBLDUDEB)\IniFile.o \
$(EPOCBLDUREL)\IniFile.o \
: \
	\SDL-1.2.13\Symbian\IniFile.h \
	\UIQ3\EPOC32\include\Ecom\EComErrorCodes.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.inl \
	\UIQ3\EPOC32\include\Ecom\Ecom.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.inl \
	\UIQ3\EPOC32\include\FbsMessage.h \
	\UIQ3\EPOC32\include\LineBreak.h \
	\UIQ3\EPOC32\include\apacmdln.h \
	\UIQ3\EPOC32\include\apadef.h \
	\UIQ3\EPOC32\include\apaflrec.h \
	\UIQ3\EPOC32\include\apaid.h \
	\UIQ3\EPOC32\include\apmstd.h \
	\UIQ3\EPOC32\include\babitflags.h \
	\UIQ3\EPOC32\include\badesca.h \
	\UIQ3\EPOC32\include\baerrhan.h \
	\UIQ3\EPOC32\include\bamdesca.h \
	\UIQ3\EPOC32\include\barsc.h \
	\UIQ3\EPOC32\include\basched.h \
	\UIQ3\EPOC32\include\bidi.h \
	\UIQ3\EPOC32\include\biditext.h \
	\UIQ3\EPOC32\include\bitbase.h \
	\UIQ3\EPOC32\include\bitdev.h \
	\UIQ3\EPOC32\include\bitdev.inl \
	\UIQ3\EPOC32\include\bitmap.h \
	\UIQ3\EPOC32\include\bitstd.h \
	\UIQ3\EPOC32\include\coedef.h \
	\UIQ3\EPOC32\include\coemain.h \
	\UIQ3\EPOC32\include\coemop.h \
	\UIQ3\EPOC32\include\coetextdrawer.h \
	\UIQ3\EPOC32\include\d32locd.h \
	\UIQ3\EPOC32\include\d32locd.inl \
	\UIQ3\EPOC32\include\e32base.h \
	\UIQ3\EPOC32\include\e32base.inl \
	\UIQ3\EPOC32\include\e32capability.h \
	\UIQ3\EPOC32\include\e32cmn.h \
	\UIQ3\EPOC32\include\e32cmn.inl \
	\UIQ3\EPOC32\include\e32const.h \
	\UIQ3\EPOC32\include\e32debug.h \
	\UIQ3\EPOC32\include\e32def.h \
	\UIQ3\EPOC32\include\e32des16.h \
	\UIQ3\EPOC32\include\e32des8.h \
	\UIQ3\EPOC32\include\e32err.h \
	\UIQ3\EPOC32\include\e32event.h \
	\UIQ3\EPOC32\include\e32hal.h \
	\UIQ3\EPOC32\include\e32keys.h \
	\UIQ3\EPOC32\include\e32ktran.h \
	\UIQ3\EPOC32\include\e32ldr.h \
	\UIQ3\EPOC32\include\e32lmsg.h \
	\UIQ3\EPOC32\include\e32notif.h \
	\UIQ3\EPOC32\include\e32std.h \
	\UIQ3\EPOC32\include\e32std.inl \
	\UIQ3\EPOC32\include\e32svr.h \
	\UIQ3\EPOC32\include\eikamnt.h \
	\UIQ3\EPOC32\include\eikaufty.h \
	\UIQ3\EPOC32\include\eikcolor.hrh \
	\UIQ3\EPOC32\include\eikdef.h \
	\UIQ3\EPOC32\include\eikdgfty.h \
	\UIQ3\EPOC32\include\eikenv.h \
	\UIQ3\EPOC32\include\eikfctry.h \
	\UIQ3\EPOC32\include\eiklibry.h \
	\UIQ3\EPOC32\include\eikvcurs.h \
	\UIQ3\EPOC32\include\f32file.h \
	\UIQ3\EPOC32\include\f32file.inl \
	\UIQ3\EPOC32\include\fbs.h \
	\UIQ3\EPOC32\include\fldbase.h \
	\UIQ3\EPOC32\include\fldbltin.h \
	\UIQ3\EPOC32\include\fldinfo.h \
	\UIQ3\EPOC32\include\fldset.h \
	\UIQ3\EPOC32\include\fntstore.h \
	\UIQ3\EPOC32\include\frmlaydt.h \
	\UIQ3\EPOC32\include\frmparam.h \
	\UIQ3\EPOC32\include\frmtlay.h \
	\UIQ3\EPOC32\include\frmvis.h \
	\UIQ3\EPOC32\include\gdi.h \
	\UIQ3\EPOC32\include\gdi.inl \
	\UIQ3\EPOC32\include\graphicsaccelerator.h \
	\UIQ3\EPOC32\include\gulalign.h \
	\UIQ3\EPOC32\include\gulbordr.h \
	\UIQ3\EPOC32\include\gulcolor.h \
	\UIQ3\EPOC32\include\guldef.h \
	\UIQ3\EPOC32\include\gulftflg.hrh \
	\UIQ3\EPOC32\include\gulutil.h \
	\UIQ3\EPOC32\include\lafmain.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\EPOC32\include\openfont.h \
	\UIQ3\EPOC32\include\partitions.h \
	\UIQ3\EPOC32\include\s32buf.h \
	\UIQ3\EPOC32\include\s32buf.inl \
	\UIQ3\EPOC32\include\s32page.h \
	\UIQ3\EPOC32\include\s32page.inl \
	\UIQ3\EPOC32\include\s32share.h \
	\UIQ3\EPOC32\include\s32share.inl \
	\UIQ3\EPOC32\include\s32std.h \
	\UIQ3\EPOC32\include\s32std.inl \
	\UIQ3\EPOC32\include\s32stor.h \
	\UIQ3\EPOC32\include\s32stor.inl \
	\UIQ3\EPOC32\include\s32strm.h \
	\UIQ3\EPOC32\include\s32strm.inl \
	\UIQ3\EPOC32\include\tagma.h \
	\UIQ3\EPOC32\include\txtetext.h \
	\UIQ3\EPOC32\include\txtetext.inl \
	\UIQ3\EPOC32\include\txtfmlyr.h \
	\UIQ3\EPOC32\include\txtfmlyr.inl \
	\UIQ3\EPOC32\include\txtfmstm.h \
	\UIQ3\EPOC32\include\txtfrmat.h \
	\UIQ3\EPOC32\include\txtfrmat.inl \
	\UIQ3\EPOC32\include\txtstyle.h \
	\UIQ3\EPOC32\include\txtstyle.inl \
	\UIQ3\EPOC32\include\uikon.hrh \
	\UIQ3\EPOC32\include\w32std.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\IniFile.o : \SDL-1.2.13\Symbian\IniFile.cpp
	echo IniFile.cpp
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\Symbian\IniFile.cpp"

LISTINGUDEBIniFile : $(EPOCBLDUDEB)\IniFile.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\Symbian\IniFile.WINSCW.lst

$(EPOCBLDUREL)\IniFile.o : \SDL-1.2.13\Symbian\IniFile.cpp
	echo IniFile.cpp
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\Symbian\IniFile.cpp"

LISTINGURELIniFile : $(EPOCBLDUREL)\IniFile.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\Symbian\IniFile.WINSCW.lst



# Source SDL.c

$(EPOCBLDUDEB)\SDL.o \
$(EPOCBLDUREL)\SDL.o \
: \
	\SDL-1.2.13\include\SDL.h \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_audio.h \
	\SDL-1.2.13\include\SDL_cdrom.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_cpuinfo.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_loadso.h \
	\SDL-1.2.13\include\SDL_main.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\SDL_fatal.h \
	\SDL-1.2.13\src\video\SDL_leaks.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL.o : \SDL-1.2.13\src\SDL.c
	echo SDL.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\SDL.c"

LISTINGUDEBSDL : $(EPOCBLDUDEB)\SDL.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\SDL.WINSCW.lst

$(EPOCBLDUREL)\SDL.o : \SDL-1.2.13\src\SDL.c
	echo SDL.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\SDL.c"

LISTINGURELSDL : $(EPOCBLDUREL)\SDL.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\SDL.WINSCW.lst



# Source SDL_error.c

$(EPOCBLDUDEB)\SDL_error.o \
$(EPOCBLDUREL)\SDL_error.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\SDL_error_c.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_error.o : \SDL-1.2.13\src\SDL_error.c
	echo SDL_error.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\SDL_error.c"

LISTINGUDEBSDL_error : $(EPOCBLDUDEB)\SDL_error.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\SDL_error.WINSCW.lst

$(EPOCBLDUREL)\SDL_error.o : \SDL-1.2.13\src\SDL_error.c
	echo SDL_error.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\SDL_error.c"

LISTINGURELSDL_error : $(EPOCBLDUREL)\SDL_error.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\SDL_error.WINSCW.lst



# Source SDL_fatal.c

$(EPOCBLDUDEB)\SDL_fatal.o \
$(EPOCBLDUREL)\SDL_fatal.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_fatal.o : \SDL-1.2.13\src\SDL_fatal.c
	echo SDL_fatal.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\SDL_fatal.c"

LISTINGUDEBSDL_fatal : $(EPOCBLDUDEB)\SDL_fatal.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\SDL_fatal.WINSCW.lst

$(EPOCBLDUREL)\SDL_fatal.o : \SDL-1.2.13\src\SDL_fatal.c
	echo SDL_fatal.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\SDL_fatal.c"

LISTINGURELSDL_fatal : $(EPOCBLDUREL)\SDL_fatal.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\SDL_fatal.WINSCW.lst



# Source SDL_cpuinfo.c

$(EPOCBLDUDEB)\SDL_cpuinfo.o \
$(EPOCBLDUREL)\SDL_cpuinfo.o \
: \
	\SDL-1.2.13\include\SDL.h \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_audio.h \
	\SDL-1.2.13\include\SDL_cdrom.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_cpuinfo.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_loadso.h \
	\SDL-1.2.13\include\SDL_main.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_cpuinfo.o : \SDL-1.2.13\src\cpuinfo\SDL_cpuinfo.c
	echo SDL_cpuinfo.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\cpuinfo\SDL_cpuinfo.c"

LISTINGUDEBSDL_cpuinfo : $(EPOCBLDUDEB)\SDL_cpuinfo.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\cpuinfo\SDL_cpuinfo.WINSCW.lst

$(EPOCBLDUREL)\SDL_cpuinfo.o : \SDL-1.2.13\src\cpuinfo\SDL_cpuinfo.c
	echo SDL_cpuinfo.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\cpuinfo\SDL_cpuinfo.c"

LISTINGURELSDL_cpuinfo : $(EPOCBLDUREL)\SDL_cpuinfo.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\cpuinfo\SDL_cpuinfo.WINSCW.lst



# Source SDL_cdrom.c

$(EPOCBLDUDEB)\SDL_cdrom.o \
$(EPOCBLDUREL)\SDL_cdrom.o \
: \
	\SDL-1.2.13\include\SDL_cdrom.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\cdrom\SDL_syscdrom.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_cdrom.o : \SDL-1.2.13\src\cdrom\SDL_cdrom.c
	echo SDL_cdrom.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\cdrom\SDL_cdrom.c"

LISTINGUDEBSDL_cdrom : $(EPOCBLDUDEB)\SDL_cdrom.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\cdrom\SDL_cdrom.WINSCW.lst

$(EPOCBLDUREL)\SDL_cdrom.o : \SDL-1.2.13\src\cdrom\SDL_cdrom.c
	echo SDL_cdrom.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\cdrom\SDL_cdrom.c"

LISTINGURELSDL_cdrom : $(EPOCBLDUREL)\SDL_cdrom.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\cdrom\SDL_cdrom.WINSCW.lst



# Source SDL_syscdrom.c

$(EPOCBLDUDEB)\SDL_syscdrom.o \
$(EPOCBLDUREL)\SDL_syscdrom.o \
: \
	\SDL-1.2.13\include\SDL_cdrom.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\cdrom\SDL_syscdrom.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_syscdrom.o : \SDL-1.2.13\src\cdrom\dummy\SDL_syscdrom.c
	echo SDL_syscdrom.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\cdrom\dummy\SDL_syscdrom.c"

LISTINGUDEBSDL_syscdrom : $(EPOCBLDUDEB)\SDL_syscdrom.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\cdrom\dummy\SDL_syscdrom.WINSCW.lst

$(EPOCBLDUREL)\SDL_syscdrom.o : \SDL-1.2.13\src\cdrom\dummy\SDL_syscdrom.c
	echo SDL_syscdrom.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\cdrom\dummy\SDL_syscdrom.c"

LISTINGURELSDL_syscdrom : $(EPOCBLDUREL)\SDL_syscdrom.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\cdrom\dummy\SDL_syscdrom.WINSCW.lst



# Source SDL_audio.c

$(EPOCBLDUDEB)\SDL_audio.o \
$(EPOCBLDUREL)\SDL_audio.o \
: \
	\SDL-1.2.13\include\SDL.h \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_audio.h \
	\SDL-1.2.13\include\SDL_cdrom.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_cpuinfo.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_loadso.h \
	\SDL-1.2.13\include\SDL_main.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\SDL_error_c.h \
	\SDL-1.2.13\src\audio\SDL_audio_c.h \
	\SDL-1.2.13\src\audio\SDL_audiomem.h \
	\SDL-1.2.13\src\audio\SDL_sysaudio.h \
	\SDL-1.2.13\src\thread\SDL_thread_c.h \
	\SDL-1.2.13\src\thread\symbian\SDL_systhread_c.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_audio.o : \SDL-1.2.13\src\audio\SDL_audio.c
	echo SDL_audio.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\audio\SDL_audio.c"

LISTINGUDEBSDL_audio : $(EPOCBLDUDEB)\SDL_audio.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\SDL_audio.WINSCW.lst

$(EPOCBLDUREL)\SDL_audio.o : \SDL-1.2.13\src\audio\SDL_audio.c
	echo SDL_audio.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\audio\SDL_audio.c"

LISTINGURELSDL_audio : $(EPOCBLDUREL)\SDL_audio.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\SDL_audio.WINSCW.lst



# Source SDL_audiocvt.c

$(EPOCBLDUDEB)\SDL_audiocvt.o \
$(EPOCBLDUREL)\SDL_audiocvt.o \
: \
	\SDL-1.2.13\include\SDL_audio.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_audiocvt.o : \SDL-1.2.13\src\audio\SDL_audiocvt.c
	echo SDL_audiocvt.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\audio\SDL_audiocvt.c"

LISTINGUDEBSDL_audiocvt : $(EPOCBLDUDEB)\SDL_audiocvt.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\SDL_audiocvt.WINSCW.lst

$(EPOCBLDUREL)\SDL_audiocvt.o : \SDL-1.2.13\src\audio\SDL_audiocvt.c
	echo SDL_audiocvt.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\audio\SDL_audiocvt.c"

LISTINGURELSDL_audiocvt : $(EPOCBLDUREL)\SDL_audiocvt.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\SDL_audiocvt.WINSCW.lst



# Source SDL_audiodev.c

$(EPOCBLDUDEB)\SDL_audiodev.o \
$(EPOCBLDUREL)\SDL_audiodev.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_audiodev.o : \SDL-1.2.13\src\audio\SDL_audiodev.c
	echo SDL_audiodev.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\audio\SDL_audiodev.c"

LISTINGUDEBSDL_audiodev : $(EPOCBLDUDEB)\SDL_audiodev.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\SDL_audiodev.WINSCW.lst

$(EPOCBLDUREL)\SDL_audiodev.o : \SDL-1.2.13\src\audio\SDL_audiodev.c
	echo SDL_audiodev.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\audio\SDL_audiodev.c"

LISTINGURELSDL_audiodev : $(EPOCBLDUREL)\SDL_audiodev.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\SDL_audiodev.WINSCW.lst



# Source SDL_mixer.c

$(EPOCBLDUDEB)\SDL_mixer.o \
$(EPOCBLDUREL)\SDL_mixer.o \
: \
	\SDL-1.2.13\include\SDL_audio.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_cpuinfo.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\audio\SDL_mixer_MMX.h \
	\SDL-1.2.13\src\audio\SDL_mixer_MMX_VC.h \
	\SDL-1.2.13\src\audio\SDL_mixer_m68k.h \
	\SDL-1.2.13\src\audio\SDL_sysaudio.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_mixer.o : \SDL-1.2.13\src\audio\SDL_mixer.c
	echo SDL_mixer.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\audio\SDL_mixer.c"

LISTINGUDEBSDL_mixer : $(EPOCBLDUDEB)\SDL_mixer.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\SDL_mixer.WINSCW.lst

$(EPOCBLDUREL)\SDL_mixer.o : \SDL-1.2.13\src\audio\SDL_mixer.c
	echo SDL_mixer.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\audio\SDL_mixer.c"

LISTINGURELSDL_mixer : $(EPOCBLDUREL)\SDL_mixer.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\SDL_mixer.WINSCW.lst



# Source SDL_wave.c

$(EPOCBLDUDEB)\SDL_wave.o \
$(EPOCBLDUREL)\SDL_wave.o \
: \
	\SDL-1.2.13\include\SDL_audio.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\audio\SDL_wave.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_wave.o : \SDL-1.2.13\src\audio\SDL_wave.c
	echo SDL_wave.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\audio\SDL_wave.c"

LISTINGUDEBSDL_wave : $(EPOCBLDUDEB)\SDL_wave.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\SDL_wave.WINSCW.lst

$(EPOCBLDUREL)\SDL_wave.o : \SDL-1.2.13\src\audio\SDL_wave.c
	echo SDL_wave.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\audio\SDL_wave.c"

LISTINGURELSDL_wave : $(EPOCBLDUREL)\SDL_wave.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\SDL_wave.WINSCW.lst



# Source SDL_SymbianAudio.cpp

$(EPOCBLDUDEB)\SDL_SymbianAudio.o \
$(EPOCBLDUREL)\SDL_SymbianAudio.o \
: \
	\SDL-1.2.13\Symbian\IniFile.h \
	\SDL-1.2.13\Symbian\ebasicapp.h \
	\SDL-1.2.13\include\SDL_audio.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\audio\SDL_sysaudio.h \
	\SDL-1.2.13\src\audio\symbian\SDL_SymbianAudio.h \
	\UIQ3\EPOC32\include\Babitflags.h \
	\UIQ3\EPOC32\include\CoeLayoutMan.h \
	\UIQ3\EPOC32\include\E32Base.h \
	\UIQ3\EPOC32\include\Ecom\EComErrorCodes.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.inl \
	\UIQ3\EPOC32\include\Ecom\Ecom.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.inl \
	\UIQ3\EPOC32\include\F32File.h \
	\UIQ3\EPOC32\include\FbsMessage.h \
	\UIQ3\EPOC32\include\LineBreak.h \
	\UIQ3\EPOC32\include\MdaAudioOutputStream.h \
	\UIQ3\EPOC32\include\Mda\Common\Audio.hrh \
	\UIQ3\EPOC32\include\Mda\Common\AudioStream.hrh \
	\UIQ3\EPOC32\include\Mda\Common\Base.h \
	\UIQ3\EPOC32\include\Mda\Common\Base.h \
	\UIQ3\EPOC32\include\Mda\Common\Base.hrh \
	\UIQ3\EPOC32\include\Mda\Common\Base.inl \
	\UIQ3\EPOC32\include\Mda\Common\Controller.h \
	\UIQ3\EPOC32\include\Mda\Common\Port.h \
	\UIQ3\EPOC32\include\Mda\Common\Port.hrh \
	\UIQ3\EPOC32\include\Mda\Common\Resource.h \
	\UIQ3\EPOC32\include\Mda\Common\Resource.hrh \
	\UIQ3\EPOC32\include\Mmf\Common\MmfBase.h \
	\UIQ3\EPOC32\include\Mmf\Common\MmfUtilities.h \
	\UIQ3\EPOC32\include\Mmfclntutility.h \
	\UIQ3\EPOC32\include\QUiConfigClient.h \
	\UIQ3\EPOC32\include\QikCategory.hrh \
	\UIQ3\EPOC32\include\QikCategoryModel.h \
	\UIQ3\EPOC32\include\QikCommand.hrh \
	\UIQ3\EPOC32\include\QikCommandManager.h \
	\UIQ3\EPOC32\include\QikContainer.h \
	\UIQ3\EPOC32\include\QikControlProvider.h \
	\UIQ3\EPOC32\include\QikFactories.h \
	\UIQ3\EPOC32\include\QikFlowLayoutManager.h \
	\UIQ3\EPOC32\include\QikLayoutManager.h \
	\UIQ3\EPOC32\include\QikLayoutValues.h \
	\UIQ3\EPOC32\include\QikUiConfigDataTypes.h \
	\UIQ3\EPOC32\include\QikViewFurniture.h \
	\UIQ3\EPOC32\include\Qikon.hrh \
	\UIQ3\EPOC32\include\apacmdln.h \
	\UIQ3\EPOC32\include\apadef.h \
	\UIQ3\EPOC32\include\apaflrec.h \
	\UIQ3\EPOC32\include\apaid.h \
	\UIQ3\EPOC32\include\apmstd.h \
	\UIQ3\EPOC32\include\apparc.h \
	\UIQ3\EPOC32\include\babitflags.h \
	\UIQ3\EPOC32\include\badesca.h \
	\UIQ3\EPOC32\include\baerrhan.h \
	\UIQ3\EPOC32\include\bamdesca.h \
	\UIQ3\EPOC32\include\barsc.h \
	\UIQ3\EPOC32\include\basched.h \
	\UIQ3\EPOC32\include\bidi.h \
	\UIQ3\EPOC32\include\biditext.h \
	\UIQ3\EPOC32\include\bitbase.h \
	\UIQ3\EPOC32\include\bitdev.h \
	\UIQ3\EPOC32\include\bitdev.inl \
	\UIQ3\EPOC32\include\bitmap.h \
	\UIQ3\EPOC32\include\bitstd.h \
	\UIQ3\EPOC32\include\caf\agent.h \
	\UIQ3\EPOC32\include\caf\attribute.h \
	\UIQ3\EPOC32\include\caf\attributeset.h \
	\UIQ3\EPOC32\include\caf\caf.h \
	\UIQ3\EPOC32\include\caf\caferr.h \
	\UIQ3\EPOC32\include\caf\cafmimeheader.h \
	\UIQ3\EPOC32\include\caf\cafpanic.h \
	\UIQ3\EPOC32\include\caf\caftypes.h \
	\UIQ3\EPOC32\include\caf\caftypes.h \
	\UIQ3\EPOC32\include\caf\content.h \
	\UIQ3\EPOC32\include\caf\data.h \
	\UIQ3\EPOC32\include\caf\dirstreamable.h \
	\UIQ3\EPOC32\include\caf\embeddedobject.h \
	\UIQ3\EPOC32\include\caf\importfile.h \
	\UIQ3\EPOC32\include\caf\manager.h \
	\UIQ3\EPOC32\include\caf\metadata.h \
	\UIQ3\EPOC32\include\caf\metadataarray.h \
	\UIQ3\EPOC32\include\caf\rightsinfo.h \
	\UIQ3\EPOC32\include\caf\rightsmanager.h \
	\UIQ3\EPOC32\include\caf\streamableptrarray.h \
	\UIQ3\EPOC32\include\caf\streamableptrarray.inl \
	\UIQ3\EPOC32\include\caf\stringattributeset.h \
	\UIQ3\EPOC32\include\caf\supplier.h \
	\UIQ3\EPOC32\include\caf\supplieroutputfile.h \
	\UIQ3\EPOC32\include\caf\virtualpath.h \
	\UIQ3\EPOC32\include\caf\virtualpathptr.h \
	\UIQ3\EPOC32\include\coeaui.h \
	\UIQ3\EPOC32\include\coecntrl.h \
	\UIQ3\EPOC32\include\coecobs.h \
	\UIQ3\EPOC32\include\coecontrolarray.h \
	\UIQ3\EPOC32\include\coedef.h \
	\UIQ3\EPOC32\include\coefont.h \
	\UIQ3\EPOC32\include\coehelp.h \
	\UIQ3\EPOC32\include\coeinput.h \
	\UIQ3\EPOC32\include\coemain.h \
	\UIQ3\EPOC32\include\coemop.h \
	\UIQ3\EPOC32\include\coetextdrawer.h \
	\UIQ3\EPOC32\include\coeview.h \
	\UIQ3\EPOC32\include\d32locd.h \
	\UIQ3\EPOC32\include\d32locd.inl \
	\UIQ3\EPOC32\include\e32base.h \
	\UIQ3\EPOC32\include\e32base.inl \
	\UIQ3\EPOC32\include\e32capability.h \
	\UIQ3\EPOC32\include\e32cmn.h \
	\UIQ3\EPOC32\include\e32cmn.inl \
	\UIQ3\EPOC32\include\e32const.h \
	\UIQ3\EPOC32\include\e32debug.h \
	\UIQ3\EPOC32\include\e32def.h \
	\UIQ3\EPOC32\include\e32des16.h \
	\UIQ3\EPOC32\include\e32des8.h \
	\UIQ3\EPOC32\include\e32err.h \
	\UIQ3\EPOC32\include\e32event.h \
	\UIQ3\EPOC32\include\e32hal.h \
	\UIQ3\EPOC32\include\e32keys.h \
	\UIQ3\EPOC32\include\e32ktran.h \
	\UIQ3\EPOC32\include\e32ldr.h \
	\UIQ3\EPOC32\include\e32lmsg.h \
	\UIQ3\EPOC32\include\e32notif.h \
	\UIQ3\EPOC32\include\e32std.h \
	\UIQ3\EPOC32\include\e32std.inl \
	\UIQ3\EPOC32\include\e32svr.h \
	\UIQ3\EPOC32\include\ecom\ECom.h \
	\UIQ3\EPOC32\include\ecom\ecom.h \
	\UIQ3\EPOC32\include\eikamnt.h \
	\UIQ3\EPOC32\include\eikapp.h \
	\UIQ3\EPOC32\include\eikappui.h \
	\UIQ3\EPOC32\include\eikaufty.h \
	\UIQ3\EPOC32\include\eikbctrl.h \
	\UIQ3\EPOC32\include\eikbtgrp.h \
	\UIQ3\EPOC32\include\eikcmobs.h \
	\UIQ3\EPOC32\include\eikcolor.hrh \
	\UIQ3\EPOC32\include\eikdef.h \
	\UIQ3\EPOC32\include\eikdgfty.h \
	\UIQ3\EPOC32\include\eikdoc.h \
	\UIQ3\EPOC32\include\eikenv.h \
	\UIQ3\EPOC32\include\eikfctry.h \
	\UIQ3\EPOC32\include\eiklibry.h \
	\UIQ3\EPOC32\include\eikmobs.h \
	\UIQ3\EPOC32\include\eikon.hrh \
	\UIQ3\EPOC32\include\eikprogi.h \
	\UIQ3\EPOC32\include\eikvcurs.h \
	\UIQ3\EPOC32\include\f32file.h \
	\UIQ3\EPOC32\include\f32file.inl \
	\UIQ3\EPOC32\include\fbs.h \
	\UIQ3\EPOC32\include\fldbase.h \
	\UIQ3\EPOC32\include\fldbltin.h \
	\UIQ3\EPOC32\include\fldinfo.h \
	\UIQ3\EPOC32\include\fldset.h \
	\UIQ3\EPOC32\include\fntstore.h \
	\UIQ3\EPOC32\include\frmlaydt.h \
	\UIQ3\EPOC32\include\frmparam.h \
	\UIQ3\EPOC32\include\frmtlay.h \
	\UIQ3\EPOC32\include\frmvis.h \
	\UIQ3\EPOC32\include\gdi.h \
	\UIQ3\EPOC32\include\gdi.inl \
	\UIQ3\EPOC32\include\graphicsaccelerator.h \
	\UIQ3\EPOC32\include\gulalign.h \
	\UIQ3\EPOC32\include\gulbordr.h \
	\UIQ3\EPOC32\include\gulcolor.h \
	\UIQ3\EPOC32\include\guldef.h \
	\UIQ3\EPOC32\include\gulftflg.hrh \
	\UIQ3\EPOC32\include\gulutil.h \
	\UIQ3\EPOC32\include\lafmain.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\EPOC32\include\mda\client\utility.h \
	\UIQ3\EPOC32\include\mda\common\audio.h \
	\UIQ3\EPOC32\include\mda\common\base.h \
	\UIQ3\EPOC32\include\mm\mmcaf.h \
	\UIQ3\EPOC32\include\mmfPluginInterfaceUIDs.hrh \
	\UIQ3\EPOC32\include\mmf\common\MmfFourCC.h \
	\UIQ3\EPOC32\include\mmf\common\MmfIpc.inl \
	\UIQ3\EPOC32\include\mmf\common\MmfUtilities.h \
	\UIQ3\EPOC32\include\mmf\common\MmfUtilities.inl \
	\UIQ3\EPOC32\include\mmf\common\Mmfbase.h \
	\UIQ3\EPOC32\include\mmf\common\mmcaf.h \
	\UIQ3\EPOC32\include\mmf\common\mmfaudio.h \
	\UIQ3\EPOC32\include\mmf\common\mmfbase.h \
	\UIQ3\EPOC32\include\mmf\common\mmfcontroller.h \
	\UIQ3\EPOC32\include\mmf\common\mmfcontrollerframework.h \
	\UIQ3\EPOC32\include\mmf\common\mmfcontrollerframeworkbase.h \
	\UIQ3\EPOC32\include\mmf\common\mmfcontrollerpluginresolver.h \
	\UIQ3\EPOC32\include\mmf\common\mmfipc.h \
	\UIQ3\EPOC32\include\mmf\common\mmfstandardcustomcommands.h \
	\UIQ3\EPOC32\include\mmf\common\mmfutilities.h \
	\UIQ3\EPOC32\include\mmf\common\mmfvideo.h \
	\UIQ3\EPOC32\include\mmf\server\mmfbuffer.h \
	\UIQ3\EPOC32\include\mmf\server\mmfbuffer.hrh \
	\UIQ3\EPOC32\include\mmf\server\mmfdatabuffer.h \
	\UIQ3\EPOC32\include\mmf\server\mmfdatasink.h \
	\UIQ3\EPOC32\include\mmf\server\mmfdatasource.h \
	\UIQ3\EPOC32\include\mmf\server\mmfdatasourcesink.hrh \
	\UIQ3\EPOC32\include\openfont.h \
	\UIQ3\EPOC32\include\partitions.h \
	\UIQ3\EPOC32\include\qikappui.h \
	\UIQ3\EPOC32\include\qikdocument.h \
	\UIQ3\EPOC32\include\qikon.hrh \
	\UIQ3\EPOC32\include\qikstockcontrols.hrh \
	\UIQ3\EPOC32\include\qiktoolbar.h \
	\UIQ3\EPOC32\include\qikviewbase.h \
	\UIQ3\EPOC32\include\quartz.mbg \
	\UIQ3\EPOC32\include\s32buf.h \
	\UIQ3\EPOC32\include\s32buf.inl \
	\UIQ3\EPOC32\include\s32file.h \
	\UIQ3\EPOC32\include\s32file.inl \
	\UIQ3\EPOC32\include\s32mem.h \
	\UIQ3\EPOC32\include\s32mem.inl \
	\UIQ3\EPOC32\include\s32page.h \
	\UIQ3\EPOC32\include\s32page.inl \
	\UIQ3\EPOC32\include\s32share.h \
	\UIQ3\EPOC32\include\s32share.inl \
	\UIQ3\EPOC32\include\s32std.h \
	\UIQ3\EPOC32\include\s32std.inl \
	\UIQ3\EPOC32\include\s32stor.h \
	\UIQ3\EPOC32\include\s32stor.inl \
	\UIQ3\EPOC32\include\s32strm.h \
	\UIQ3\EPOC32\include\s32strm.inl \
	\UIQ3\EPOC32\include\savenotf.h \
	\UIQ3\EPOC32\include\tagma.h \
	\UIQ3\EPOC32\include\txtetext.h \
	\UIQ3\EPOC32\include\txtetext.inl \
	\UIQ3\EPOC32\include\txtfmlyr.h \
	\UIQ3\EPOC32\include\txtfmlyr.inl \
	\UIQ3\EPOC32\include\txtfmstm.h \
	\UIQ3\EPOC32\include\txtfrmat.h \
	\UIQ3\EPOC32\include\txtfrmat.inl \
	\UIQ3\EPOC32\include\txtstyle.h \
	\UIQ3\EPOC32\include\txtstyle.inl \
	\UIQ3\EPOC32\include\uikon.hrh \
	\UIQ3\EPOC32\include\vwsdef.h \
	\UIQ3\EPOC32\include\w32std.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_SymbianAudio.o : \SDL-1.2.13\src\audio\symbian\SDL_SymbianAudio.cpp
	echo SDL_SymbianAudio.cpp
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\audio\symbian\SDL_SymbianAudio.cpp"

LISTINGUDEBSDL_SymbianAudio : $(EPOCBLDUDEB)\SDL_SymbianAudio.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\symbian\SDL_SymbianAudio.WINSCW.lst

$(EPOCBLDUREL)\SDL_SymbianAudio.o : \SDL-1.2.13\src\audio\symbian\SDL_SymbianAudio.cpp
	echo SDL_SymbianAudio.cpp
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\audio\symbian\SDL_SymbianAudio.cpp"

LISTINGURELSDL_SymbianAudio : $(EPOCBLDUREL)\SDL_SymbianAudio.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\audio\symbian\SDL_SymbianAudio.WINSCW.lst



# Source SDL_blit.c

$(EPOCBLDUDEB)\SDL_blit.o \
$(EPOCBLDUREL)\SDL_blit.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_RLEaccel_c.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\SDL-1.2.13\src\video\SDL_pixels_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_blit.o : \SDL-1.2.13\src\video\SDL_blit.c
	echo SDL_blit.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_blit.c"

LISTINGUDEBSDL_blit : $(EPOCBLDUDEB)\SDL_blit.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_blit.WINSCW.lst

$(EPOCBLDUREL)\SDL_blit.o : \SDL-1.2.13\src\video\SDL_blit.c
	echo SDL_blit.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_blit.c"

LISTINGURELSDL_blit : $(EPOCBLDUREL)\SDL_blit.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_blit.WINSCW.lst



# Source SDL_blit_0.c

$(EPOCBLDUDEB)\SDL_blit_0.o \
$(EPOCBLDUREL)\SDL_blit_0.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_blit_0.o : \SDL-1.2.13\src\video\SDL_blit_0.c
	echo SDL_blit_0.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_blit_0.c"

LISTINGUDEBSDL_blit_0 : $(EPOCBLDUDEB)\SDL_blit_0.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_blit_0.WINSCW.lst

$(EPOCBLDUREL)\SDL_blit_0.o : \SDL-1.2.13\src\video\SDL_blit_0.c
	echo SDL_blit_0.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_blit_0.c"

LISTINGURELSDL_blit_0 : $(EPOCBLDUREL)\SDL_blit_0.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_blit_0.WINSCW.lst



# Source SDL_blit_1.c

$(EPOCBLDUDEB)\SDL_blit_1.o \
$(EPOCBLDUREL)\SDL_blit_1.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_blit_1.o : \SDL-1.2.13\src\video\SDL_blit_1.c
	echo SDL_blit_1.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_blit_1.c"

LISTINGUDEBSDL_blit_1 : $(EPOCBLDUDEB)\SDL_blit_1.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_blit_1.WINSCW.lst

$(EPOCBLDUREL)\SDL_blit_1.o : \SDL-1.2.13\src\video\SDL_blit_1.c
	echo SDL_blit_1.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_blit_1.c"

LISTINGURELSDL_blit_1 : $(EPOCBLDUREL)\SDL_blit_1.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_blit_1.WINSCW.lst



# Source SDL_blit_A.c

$(EPOCBLDUDEB)\SDL_blit_A.o \
$(EPOCBLDUREL)\SDL_blit_A.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_cpuinfo.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_blit_A.o : \SDL-1.2.13\src\video\SDL_blit_A.c
	echo SDL_blit_A.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_blit_A.c"

LISTINGUDEBSDL_blit_A : $(EPOCBLDUDEB)\SDL_blit_A.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_blit_A.WINSCW.lst

$(EPOCBLDUREL)\SDL_blit_A.o : \SDL-1.2.13\src\video\SDL_blit_A.c
	echo SDL_blit_A.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_blit_A.c"

LISTINGURELSDL_blit_A : $(EPOCBLDUREL)\SDL_blit_A.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_blit_A.WINSCW.lst



# Source SDL_blit_N.c

$(EPOCBLDUDEB)\SDL_blit_N.o \
$(EPOCBLDUREL)\SDL_blit_N.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_cpuinfo.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_blit_N.o : \SDL-1.2.13\src\video\SDL_blit_N.c
	echo SDL_blit_N.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_blit_N.c"

LISTINGUDEBSDL_blit_N : $(EPOCBLDUDEB)\SDL_blit_N.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_blit_N.WINSCW.lst

$(EPOCBLDUREL)\SDL_blit_N.o : \SDL-1.2.13\src\video\SDL_blit_N.c
	echo SDL_blit_N.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_blit_N.c"

LISTINGURELSDL_blit_N : $(EPOCBLDUREL)\SDL_blit_N.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_blit_N.WINSCW.lst



# Source SDL_bmp.c

$(EPOCBLDUDEB)\SDL_bmp.o \
$(EPOCBLDUREL)\SDL_bmp.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_bmp.o : \SDL-1.2.13\src\video\SDL_bmp.c
	echo SDL_bmp.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_bmp.c"

LISTINGUDEBSDL_bmp : $(EPOCBLDUDEB)\SDL_bmp.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_bmp.WINSCW.lst

$(EPOCBLDUREL)\SDL_bmp.o : \SDL-1.2.13\src\video\SDL_bmp.c
	echo SDL_bmp.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_bmp.c"

LISTINGURELSDL_bmp : $(EPOCBLDUREL)\SDL_bmp.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_bmp.WINSCW.lst



# Source SDL_cursor.c

$(EPOCBLDUDEB)\SDL_cursor.o \
$(EPOCBLDUREL)\SDL_cursor.o \
: \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\SDL-1.2.13\src\events\SDL_sysevents.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\SDL-1.2.13\src\video\SDL_cursor_c.h \
	\SDL-1.2.13\src\video\SDL_pixels_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\default_cursor.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_cursor.o : \SDL-1.2.13\src\video\SDL_cursor.c
	echo SDL_cursor.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_cursor.c"

LISTINGUDEBSDL_cursor : $(EPOCBLDUDEB)\SDL_cursor.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_cursor.WINSCW.lst

$(EPOCBLDUREL)\SDL_cursor.o : \SDL-1.2.13\src\video\SDL_cursor.c
	echo SDL_cursor.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_cursor.c"

LISTINGURELSDL_cursor : $(EPOCBLDUREL)\SDL_cursor.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_cursor.WINSCW.lst



# Source SDL_gamma.c

$(EPOCBLDUDEB)\SDL_gamma.o \
$(EPOCBLDUREL)\SDL_gamma.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\ieeefp.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\math.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_gamma.o : \SDL-1.2.13\src\video\SDL_gamma.c
	echo SDL_gamma.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_gamma.c"

LISTINGUDEBSDL_gamma : $(EPOCBLDUDEB)\SDL_gamma.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_gamma.WINSCW.lst

$(EPOCBLDUREL)\SDL_gamma.o : \SDL-1.2.13\src\video\SDL_gamma.c
	echo SDL_gamma.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_gamma.c"

LISTINGURELSDL_gamma : $(EPOCBLDUREL)\SDL_gamma.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_gamma.WINSCW.lst



# Source SDL_pixels.c

$(EPOCBLDUDEB)\SDL_pixels.o \
$(EPOCBLDUREL)\SDL_pixels.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_RLEaccel_c.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\SDL-1.2.13\src\video\SDL_pixels_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_pixels.o : \SDL-1.2.13\src\video\SDL_pixels.c
	echo SDL_pixels.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_pixels.c"

LISTINGUDEBSDL_pixels : $(EPOCBLDUDEB)\SDL_pixels.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_pixels.WINSCW.lst

$(EPOCBLDUREL)\SDL_pixels.o : \SDL-1.2.13\src\video\SDL_pixels.c
	echo SDL_pixels.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_pixels.c"

LISTINGURELSDL_pixels : $(EPOCBLDUREL)\SDL_pixels.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_pixels.WINSCW.lst



# Source SDL_RLEaccel.c

$(EPOCBLDUDEB)\SDL_RLEaccel.o \
$(EPOCBLDUREL)\SDL_RLEaccel.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_RLEaccel_c.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_RLEaccel.o : \SDL-1.2.13\src\video\SDL_RLEaccel.c
	echo SDL_RLEaccel.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_RLEaccel.c"

LISTINGUDEBSDL_RLEaccel : $(EPOCBLDUDEB)\SDL_RLEaccel.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_RLEaccel.WINSCW.lst

$(EPOCBLDUREL)\SDL_RLEaccel.o : \SDL-1.2.13\src\video\SDL_RLEaccel.c
	echo SDL_RLEaccel.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_RLEaccel.c"

LISTINGURELSDL_RLEaccel : $(EPOCBLDUREL)\SDL_RLEaccel.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_RLEaccel.WINSCW.lst



# Source SDL_stretch.c

$(EPOCBLDUDEB)\SDL_stretch.o \
$(EPOCBLDUREL)\SDL_stretch.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_stretch.o : \SDL-1.2.13\src\video\SDL_stretch.c
	echo SDL_stretch.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_stretch.c"

LISTINGUDEBSDL_stretch : $(EPOCBLDUDEB)\SDL_stretch.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_stretch.WINSCW.lst

$(EPOCBLDUREL)\SDL_stretch.o : \SDL-1.2.13\src\video\SDL_stretch.c
	echo SDL_stretch.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_stretch.c"

LISTINGURELSDL_stretch : $(EPOCBLDUREL)\SDL_stretch.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_stretch.WINSCW.lst



# Source SDL_surface.c

$(EPOCBLDUDEB)\SDL_surface.o \
$(EPOCBLDUREL)\SDL_surface.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_RLEaccel_c.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\SDL-1.2.13\src\video\SDL_cursor_c.h \
	\SDL-1.2.13\src\video\SDL_leaks.h \
	\SDL-1.2.13\src\video\SDL_pixels_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_surface.o : \SDL-1.2.13\src\video\SDL_surface.c
	echo SDL_surface.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_surface.c"

LISTINGUDEBSDL_surface : $(EPOCBLDUDEB)\SDL_surface.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_surface.WINSCW.lst

$(EPOCBLDUREL)\SDL_surface.o : \SDL-1.2.13\src\video\SDL_surface.c
	echo SDL_surface.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_surface.c"

LISTINGURELSDL_surface : $(EPOCBLDUREL)\SDL_surface.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_surface.WINSCW.lst



# Source SDL_video.c

$(EPOCBLDUDEB)\SDL_video.o \
$(EPOCBLDUREL)\SDL_video.o \
: \
	\SDL-1.2.13\include\SDL.h \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_audio.h \
	\SDL-1.2.13\include\SDL_cdrom.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_cpuinfo.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_loadso.h \
	\SDL-1.2.13\include\SDL_main.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\SDL-1.2.13\src\events\SDL_sysevents.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\SDL-1.2.13\src\video\SDL_cursor_c.h \
	\SDL-1.2.13\src\video\SDL_pixels_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_video.o : \SDL-1.2.13\src\video\SDL_video.c
	echo SDL_video.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_video.c"

LISTINGUDEBSDL_video : $(EPOCBLDUDEB)\SDL_video.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_video.WINSCW.lst

$(EPOCBLDUREL)\SDL_video.o : \SDL-1.2.13\src\video\SDL_video.c
	echo SDL_video.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_video.c"

LISTINGURELSDL_video : $(EPOCBLDUREL)\SDL_video.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_video.WINSCW.lst



# Source SDL_yuv.c

$(EPOCBLDUDEB)\SDL_yuv.o \
$(EPOCBLDUREL)\SDL_yuv.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\SDL_yuv_sw_c.h \
	\SDL-1.2.13\src\video\SDL_yuvfuncs.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_yuv.o : \SDL-1.2.13\src\video\SDL_yuv.c
	echo SDL_yuv.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_yuv.c"

LISTINGUDEBSDL_yuv : $(EPOCBLDUDEB)\SDL_yuv.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_yuv.WINSCW.lst

$(EPOCBLDUREL)\SDL_yuv.o : \SDL-1.2.13\src\video\SDL_yuv.c
	echo SDL_yuv.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_yuv.c"

LISTINGURELSDL_yuv : $(EPOCBLDUREL)\SDL_yuv.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_yuv.WINSCW.lst



# Source SDL_yuv_sw.c

$(EPOCBLDUDEB)\SDL_yuv_sw.o \
$(EPOCBLDUREL)\SDL_yuv_sw.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_cpuinfo.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\video\SDL_stretch_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\SDL_yuv_sw_c.h \
	\SDL-1.2.13\src\video\SDL_yuvfuncs.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_yuv_sw.o : \SDL-1.2.13\src\video\SDL_yuv_sw.c
	echo SDL_yuv_sw.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\SDL_yuv_sw.c"

LISTINGUDEBSDL_yuv_sw : $(EPOCBLDUDEB)\SDL_yuv_sw.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_yuv_sw.WINSCW.lst

$(EPOCBLDUREL)\SDL_yuv_sw.o : \SDL-1.2.13\src\video\SDL_yuv_sw.c
	echo SDL_yuv_sw.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\SDL_yuv_sw.c"

LISTINGURELSDL_yuv_sw : $(EPOCBLDUREL)\SDL_yuv_sw.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\SDL_yuv_sw.WINSCW.lst



# Source SDL_epocvideo.cpp

$(EPOCBLDUDEB)\SDL_epocvideo.o \
$(EPOCBLDUREL)\SDL_epocvideo.o \
: \
	\SDL-1.2.13\Symbian\EBasicApp.h \
	\SDL-1.2.13\Symbian\IniFile.h \
	\SDL-1.2.13\Symbian\ebasicapp.h \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\SDL-1.2.13\src\joystick\SDL_joystick_c.h \
	\SDL-1.2.13\src\joystick\SDL_sysjoystick.h \
	\SDL-1.2.13\src\video\SDL_blit.h \
	\SDL-1.2.13\src\video\SDL_pixels_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\symbian\SDL_EpocVideo_UIQ3.inl \
	\SDL-1.2.13\src\video\symbian\SDL_EpocVideo_vga.inl \
	\SDL-1.2.13\src\video\symbian\SDL_epocevents_c.h \
	\SDL-1.2.13\src\video\symbian\SDL_epocvideo.h \
	\UIQ3\EPOC32\include\Babitflags.h \
	\UIQ3\EPOC32\include\CoeLayoutMan.h \
	\UIQ3\EPOC32\include\Ecom\EComErrorCodes.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.inl \
	\UIQ3\EPOC32\include\Ecom\Ecom.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.inl \
	\UIQ3\EPOC32\include\FbsMessage.h \
	\UIQ3\EPOC32\include\LineBreak.h \
	\UIQ3\EPOC32\include\QUiConfigClient.h \
	\UIQ3\EPOC32\include\QikCategory.hrh \
	\UIQ3\EPOC32\include\QikCategoryModel.h \
	\UIQ3\EPOC32\include\QikCommand.hrh \
	\UIQ3\EPOC32\include\QikCommandManager.h \
	\UIQ3\EPOC32\include\QikContainer.h \
	\UIQ3\EPOC32\include\QikControlProvider.h \
	\UIQ3\EPOC32\include\QikFactories.h \
	\UIQ3\EPOC32\include\QikFlowLayoutManager.h \
	\UIQ3\EPOC32\include\QikLayoutManager.h \
	\UIQ3\EPOC32\include\QikLayoutValues.h \
	\UIQ3\EPOC32\include\QikUiConfigDataTypes.h \
	\UIQ3\EPOC32\include\QikViewFurniture.h \
	\UIQ3\EPOC32\include\Qikon.hrh \
	\UIQ3\EPOC32\include\apacmdln.h \
	\UIQ3\EPOC32\include\apadef.h \
	\UIQ3\EPOC32\include\apaflrec.h \
	\UIQ3\EPOC32\include\apaid.h \
	\UIQ3\EPOC32\include\apgwgnam.h \
	\UIQ3\EPOC32\include\apmstd.h \
	\UIQ3\EPOC32\include\apparc.h \
	\UIQ3\EPOC32\include\babitflags.h \
	\UIQ3\EPOC32\include\badesca.h \
	\UIQ3\EPOC32\include\baerrhan.h \
	\UIQ3\EPOC32\include\bamdesca.h \
	\UIQ3\EPOC32\include\barsc.h \
	\UIQ3\EPOC32\include\basched.h \
	\UIQ3\EPOC32\include\bidi.h \
	\UIQ3\EPOC32\include\biditext.h \
	\UIQ3\EPOC32\include\bitbase.h \
	\UIQ3\EPOC32\include\bitdev.h \
	\UIQ3\EPOC32\include\bitdev.inl \
	\UIQ3\EPOC32\include\bitmap.h \
	\UIQ3\EPOC32\include\bitstd.h \
	\UIQ3\EPOC32\include\coeaui.h \
	\UIQ3\EPOC32\include\coecntrl.h \
	\UIQ3\EPOC32\include\coecobs.h \
	\UIQ3\EPOC32\include\coecontrolarray.h \
	\UIQ3\EPOC32\include\coedef.h \
	\UIQ3\EPOC32\include\coefont.h \
	\UIQ3\EPOC32\include\coehelp.h \
	\UIQ3\EPOC32\include\coeinput.h \
	\UIQ3\EPOC32\include\coemain.h \
	\UIQ3\EPOC32\include\coemop.h \
	\UIQ3\EPOC32\include\coetextdrawer.h \
	\UIQ3\EPOC32\include\coeview.h \
	\UIQ3\EPOC32\include\d32locd.h \
	\UIQ3\EPOC32\include\d32locd.inl \
	\UIQ3\EPOC32\include\e32base.h \
	\UIQ3\EPOC32\include\e32base.inl \
	\UIQ3\EPOC32\include\e32capability.h \
	\UIQ3\EPOC32\include\e32cmn.h \
	\UIQ3\EPOC32\include\e32cmn.inl \
	\UIQ3\EPOC32\include\e32const.h \
	\UIQ3\EPOC32\include\e32debug.h \
	\UIQ3\EPOC32\include\e32def.h \
	\UIQ3\EPOC32\include\e32des16.h \
	\UIQ3\EPOC32\include\e32des8.h \
	\UIQ3\EPOC32\include\e32err.h \
	\UIQ3\EPOC32\include\e32event.h \
	\UIQ3\EPOC32\include\e32hal.h \
	\UIQ3\EPOC32\include\e32keys.h \
	\UIQ3\EPOC32\include\e32ktran.h \
	\UIQ3\EPOC32\include\e32ldr.h \
	\UIQ3\EPOC32\include\e32lmsg.h \
	\UIQ3\EPOC32\include\e32notif.h \
	\UIQ3\EPOC32\include\e32std.h \
	\UIQ3\EPOC32\include\e32std.inl \
	\UIQ3\EPOC32\include\e32svr.h \
	\UIQ3\EPOC32\include\eikamnt.h \
	\UIQ3\EPOC32\include\eikapp.h \
	\UIQ3\EPOC32\include\eikappui.h \
	\UIQ3\EPOC32\include\eikaufty.h \
	\UIQ3\EPOC32\include\eikbctrl.h \
	\UIQ3\EPOC32\include\eikbtgrp.h \
	\UIQ3\EPOC32\include\eikcmobs.h \
	\UIQ3\EPOC32\include\eikcolor.hrh \
	\UIQ3\EPOC32\include\eikdef.h \
	\UIQ3\EPOC32\include\eikdgfty.h \
	\UIQ3\EPOC32\include\eikdoc.h \
	\UIQ3\EPOC32\include\eikenv.h \
	\UIQ3\EPOC32\include\eikfctry.h \
	\UIQ3\EPOC32\include\eiklibry.h \
	\UIQ3\EPOC32\include\eikmobs.h \
	\UIQ3\EPOC32\include\eikon.hrh \
	\UIQ3\EPOC32\include\eikprogi.h \
	\UIQ3\EPOC32\include\eikvcurs.h \
	\UIQ3\EPOC32\include\f32file.h \
	\UIQ3\EPOC32\include\f32file.inl \
	\UIQ3\EPOC32\include\fbs.h \
	\UIQ3\EPOC32\include\fldbase.h \
	\UIQ3\EPOC32\include\fldbltin.h \
	\UIQ3\EPOC32\include\fldinfo.h \
	\UIQ3\EPOC32\include\fldset.h \
	\UIQ3\EPOC32\include\fntstore.h \
	\UIQ3\EPOC32\include\frmlaydt.h \
	\UIQ3\EPOC32\include\frmparam.h \
	\UIQ3\EPOC32\include\frmtlay.h \
	\UIQ3\EPOC32\include\frmvis.h \
	\UIQ3\EPOC32\include\gdi.h \
	\UIQ3\EPOC32\include\gdi.inl \
	\UIQ3\EPOC32\include\graphicsaccelerator.h \
	\UIQ3\EPOC32\include\gulalign.h \
	\UIQ3\EPOC32\include\gulbordr.h \
	\UIQ3\EPOC32\include\gulcolor.h \
	\UIQ3\EPOC32\include\guldef.h \
	\UIQ3\EPOC32\include\gulftflg.hrh \
	\UIQ3\EPOC32\include\gulutil.h \
	\UIQ3\EPOC32\include\lafmain.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\EPOC32\include\openfont.h \
	\UIQ3\EPOC32\include\partitions.h \
	\UIQ3\EPOC32\include\qikappui.h \
	\UIQ3\EPOC32\include\qikdocument.h \
	\UIQ3\EPOC32\include\qikon.hrh \
	\UIQ3\EPOC32\include\qikstockcontrols.hrh \
	\UIQ3\EPOC32\include\qiktoolbar.h \
	\UIQ3\EPOC32\include\qikviewbase.h \
	\UIQ3\EPOC32\include\quartz.mbg \
	\UIQ3\EPOC32\include\s32buf.h \
	\UIQ3\EPOC32\include\s32buf.inl \
	\UIQ3\EPOC32\include\s32file.h \
	\UIQ3\EPOC32\include\s32file.inl \
	\UIQ3\EPOC32\include\s32page.h \
	\UIQ3\EPOC32\include\s32page.inl \
	\UIQ3\EPOC32\include\s32share.h \
	\UIQ3\EPOC32\include\s32share.inl \
	\UIQ3\EPOC32\include\s32std.h \
	\UIQ3\EPOC32\include\s32std.inl \
	\UIQ3\EPOC32\include\s32stor.h \
	\UIQ3\EPOC32\include\s32stor.inl \
	\UIQ3\EPOC32\include\s32strm.h \
	\UIQ3\EPOC32\include\s32strm.inl \
	\UIQ3\EPOC32\include\savenotf.h \
	\UIQ3\EPOC32\include\tagma.h \
	\UIQ3\EPOC32\include\txtetext.h \
	\UIQ3\EPOC32\include\txtetext.inl \
	\UIQ3\EPOC32\include\txtfmlyr.h \
	\UIQ3\EPOC32\include\txtfmlyr.inl \
	\UIQ3\EPOC32\include\txtfmstm.h \
	\UIQ3\EPOC32\include\txtfrmat.h \
	\UIQ3\EPOC32\include\txtfrmat.inl \
	\UIQ3\EPOC32\include\txtstyle.h \
	\UIQ3\EPOC32\include\txtstyle.inl \
	\UIQ3\EPOC32\include\uikon.hrh \
	\UIQ3\EPOC32\include\vwsdef.h \
	\UIQ3\EPOC32\include\w32std.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_epocvideo.o : \SDL-1.2.13\src\video\symbian\SDL_epocvideo.cpp
	echo SDL_epocvideo.cpp
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\symbian\SDL_epocvideo.cpp"

LISTINGUDEBSDL_epocvideo : $(EPOCBLDUDEB)\SDL_epocvideo.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\symbian\SDL_epocvideo.WINSCW.lst

$(EPOCBLDUREL)\SDL_epocvideo.o : \SDL-1.2.13\src\video\symbian\SDL_epocvideo.cpp
	echo SDL_epocvideo.cpp
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\symbian\SDL_epocvideo.cpp"

LISTINGURELSDL_epocvideo : $(EPOCBLDUREL)\SDL_epocvideo.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\symbian\SDL_epocvideo.WINSCW.lst



# Source SDL_epocevents.cpp

$(EPOCBLDUDEB)\SDL_epocevents.o \
$(EPOCBLDUREL)\SDL_epocevents.o \
: \
	\SDL-1.2.13\Symbian\IniFile.h \
	\SDL-1.2.13\Symbian\SDLApp.h \
	\SDL-1.2.13\Symbian\ebasicapp.h \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\symbian\SDL_epocevents_c.h \
	\SDL-1.2.13\src\video\symbian\SDL_epocvideo.h \
	\UIQ3\EPOC32\include\Babitflags.h \
	\UIQ3\EPOC32\include\CoeLayoutMan.h \
	\UIQ3\EPOC32\include\Ecom\EComErrorCodes.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.inl \
	\UIQ3\EPOC32\include\Ecom\Ecom.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.inl \
	\UIQ3\EPOC32\include\FbsMessage.h \
	\UIQ3\EPOC32\include\LineBreak.h \
	\UIQ3\EPOC32\include\QUiConfigClient.h \
	\UIQ3\EPOC32\include\QikCategory.hrh \
	\UIQ3\EPOC32\include\QikCategoryModel.h \
	\UIQ3\EPOC32\include\QikCommand.hrh \
	\UIQ3\EPOC32\include\QikCommandManager.h \
	\UIQ3\EPOC32\include\QikContainer.h \
	\UIQ3\EPOC32\include\QikControlProvider.h \
	\UIQ3\EPOC32\include\QikFactories.h \
	\UIQ3\EPOC32\include\QikFlowLayoutManager.h \
	\UIQ3\EPOC32\include\QikLayoutManager.h \
	\UIQ3\EPOC32\include\QikLayoutValues.h \
	\UIQ3\EPOC32\include\QikUiConfigDataTypes.h \
	\UIQ3\EPOC32\include\QikViewFurniture.h \
	\UIQ3\EPOC32\include\Qikon.hrh \
	\UIQ3\EPOC32\include\apacmdln.h \
	\UIQ3\EPOC32\include\apadef.h \
	\UIQ3\EPOC32\include\apaflrec.h \
	\UIQ3\EPOC32\include\apaid.h \
	\UIQ3\EPOC32\include\apmstd.h \
	\UIQ3\EPOC32\include\apparc.h \
	\UIQ3\EPOC32\include\babitflags.h \
	\UIQ3\EPOC32\include\badesca.h \
	\UIQ3\EPOC32\include\baerrhan.h \
	\UIQ3\EPOC32\include\bamdesca.h \
	\UIQ3\EPOC32\include\barsc.h \
	\UIQ3\EPOC32\include\barsread.h \
	\UIQ3\EPOC32\include\basched.h \
	\UIQ3\EPOC32\include\bautils.h \
	\UIQ3\EPOC32\include\bidi.h \
	\UIQ3\EPOC32\include\biditext.h \
	\UIQ3\EPOC32\include\bitbase.h \
	\UIQ3\EPOC32\include\bitdev.h \
	\UIQ3\EPOC32\include\bitdev.inl \
	\UIQ3\EPOC32\include\bitmap.h \
	\UIQ3\EPOC32\include\bitstd.h \
	\UIQ3\EPOC32\include\coeaui.h \
	\UIQ3\EPOC32\include\coecntrl.h \
	\UIQ3\EPOC32\include\coecobs.h \
	\UIQ3\EPOC32\include\coecontrolarray.h \
	\UIQ3\EPOC32\include\coedef.h \
	\UIQ3\EPOC32\include\coefont.h \
	\UIQ3\EPOC32\include\coehelp.h \
	\UIQ3\EPOC32\include\coeinput.h \
	\UIQ3\EPOC32\include\coemain.h \
	\UIQ3\EPOC32\include\coemop.h \
	\UIQ3\EPOC32\include\coetextdrawer.h \
	\UIQ3\EPOC32\include\coeview.h \
	\UIQ3\EPOC32\include\d32locd.h \
	\UIQ3\EPOC32\include\d32locd.inl \
	\UIQ3\EPOC32\include\devicekeys.h \
	\UIQ3\EPOC32\include\e32base.h \
	\UIQ3\EPOC32\include\e32base.inl \
	\UIQ3\EPOC32\include\e32capability.h \
	\UIQ3\EPOC32\include\e32cmn.h \
	\UIQ3\EPOC32\include\e32cmn.inl \
	\UIQ3\EPOC32\include\e32const.h \
	\UIQ3\EPOC32\include\e32debug.h \
	\UIQ3\EPOC32\include\e32def.h \
	\UIQ3\EPOC32\include\e32des16.h \
	\UIQ3\EPOC32\include\e32des8.h \
	\UIQ3\EPOC32\include\e32err.h \
	\UIQ3\EPOC32\include\e32event.h \
	\UIQ3\EPOC32\include\e32hal.h \
	\UIQ3\EPOC32\include\e32keys.h \
	\UIQ3\EPOC32\include\e32ktran.h \
	\UIQ3\EPOC32\include\e32ldr.h \
	\UIQ3\EPOC32\include\e32lmsg.h \
	\UIQ3\EPOC32\include\e32notif.h \
	\UIQ3\EPOC32\include\e32std.h \
	\UIQ3\EPOC32\include\e32std.inl \
	\UIQ3\EPOC32\include\e32svr.h \
	\UIQ3\EPOC32\include\eikamnt.h \
	\UIQ3\EPOC32\include\eikapp.h \
	\UIQ3\EPOC32\include\eikappui.h \
	\UIQ3\EPOC32\include\eikaufty.h \
	\UIQ3\EPOC32\include\eikbctrl.h \
	\UIQ3\EPOC32\include\eikbtgrp.h \
	\UIQ3\EPOC32\include\eikcmobs.h \
	\UIQ3\EPOC32\include\eikcolor.hrh \
	\UIQ3\EPOC32\include\eikdef.h \
	\UIQ3\EPOC32\include\eikdgfty.h \
	\UIQ3\EPOC32\include\eikdoc.h \
	\UIQ3\EPOC32\include\eikenv.h \
	\UIQ3\EPOC32\include\eikfctry.h \
	\UIQ3\EPOC32\include\eiklibry.h \
	\UIQ3\EPOC32\include\eikmobs.h \
	\UIQ3\EPOC32\include\eikon.hrh \
	\UIQ3\EPOC32\include\eikprogi.h \
	\UIQ3\EPOC32\include\eikvcurs.h \
	\UIQ3\EPOC32\include\f32file.h \
	\UIQ3\EPOC32\include\f32file.inl \
	\UIQ3\EPOC32\include\fbs.h \
	\UIQ3\EPOC32\include\fldbase.h \
	\UIQ3\EPOC32\include\fldbltin.h \
	\UIQ3\EPOC32\include\fldinfo.h \
	\UIQ3\EPOC32\include\fldset.h \
	\UIQ3\EPOC32\include\fntstore.h \
	\UIQ3\EPOC32\include\frmlaydt.h \
	\UIQ3\EPOC32\include\frmparam.h \
	\UIQ3\EPOC32\include\frmtlay.h \
	\UIQ3\EPOC32\include\frmvis.h \
	\UIQ3\EPOC32\include\gdi.h \
	\UIQ3\EPOC32\include\gdi.inl \
	\UIQ3\EPOC32\include\graphicsaccelerator.h \
	\UIQ3\EPOC32\include\gulalign.h \
	\UIQ3\EPOC32\include\gulbordr.h \
	\UIQ3\EPOC32\include\gulcolor.h \
	\UIQ3\EPOC32\include\guldef.h \
	\UIQ3\EPOC32\include\gulftflg.hrh \
	\UIQ3\EPOC32\include\gulutil.h \
	\UIQ3\EPOC32\include\lafmain.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\EPOC32\include\openfont.h \
	\UIQ3\EPOC32\include\partitions.h \
	\UIQ3\EPOC32\include\qikapplication.h \
	\UIQ3\EPOC32\include\qikappui.h \
	\UIQ3\EPOC32\include\qikdocument.h \
	\UIQ3\EPOC32\include\qikon.hrh \
	\UIQ3\EPOC32\include\qikstockcontrols.hrh \
	\UIQ3\EPOC32\include\qiktoolbar.h \
	\UIQ3\EPOC32\include\qikviewbase.h \
	\UIQ3\EPOC32\include\quartz.mbg \
	\UIQ3\EPOC32\include\s32buf.h \
	\UIQ3\EPOC32\include\s32buf.inl \
	\UIQ3\EPOC32\include\s32file.h \
	\UIQ3\EPOC32\include\s32file.inl \
	\UIQ3\EPOC32\include\s32page.h \
	\UIQ3\EPOC32\include\s32page.inl \
	\UIQ3\EPOC32\include\s32share.h \
	\UIQ3\EPOC32\include\s32share.inl \
	\UIQ3\EPOC32\include\s32std.h \
	\UIQ3\EPOC32\include\s32std.inl \
	\UIQ3\EPOC32\include\s32stor.h \
	\UIQ3\EPOC32\include\s32stor.inl \
	\UIQ3\EPOC32\include\s32strm.h \
	\UIQ3\EPOC32\include\s32strm.inl \
	\UIQ3\EPOC32\include\savenotf.h \
	\UIQ3\EPOC32\include\tagma.h \
	\UIQ3\EPOC32\include\txtetext.h \
	\UIQ3\EPOC32\include\txtetext.inl \
	\UIQ3\EPOC32\include\txtfmlyr.h \
	\UIQ3\EPOC32\include\txtfmlyr.inl \
	\UIQ3\EPOC32\include\txtfmstm.h \
	\UIQ3\EPOC32\include\txtfrmat.h \
	\UIQ3\EPOC32\include\txtfrmat.inl \
	\UIQ3\EPOC32\include\txtstyle.h \
	\UIQ3\EPOC32\include\txtstyle.inl \
	\UIQ3\EPOC32\include\uikon.hrh \
	\UIQ3\EPOC32\include\vwsdef.h \
	\UIQ3\EPOC32\include\w32std.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_epocevents.o : \SDL-1.2.13\src\video\symbian\SDL_epocevents.cpp
	echo SDL_epocevents.cpp
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\video\symbian\SDL_epocevents.cpp"

LISTINGUDEBSDL_epocevents : $(EPOCBLDUDEB)\SDL_epocevents.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\symbian\SDL_epocevents.WINSCW.lst

$(EPOCBLDUREL)\SDL_epocevents.o : \SDL-1.2.13\src\video\symbian\SDL_epocevents.cpp
	echo SDL_epocevents.cpp
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\video\symbian\SDL_epocevents.cpp"

LISTINGURELSDL_epocevents : $(EPOCBLDUREL)\SDL_epocevents.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\video\symbian\SDL_epocevents.WINSCW.lst



# Source SDL_thread.c

$(EPOCBLDUDEB)\SDL_thread.o \
$(EPOCBLDUREL)\SDL_thread.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\SDL_error_c.h \
	\SDL-1.2.13\src\thread\SDL_systhread.h \
	\SDL-1.2.13\src\thread\SDL_thread_c.h \
	\SDL-1.2.13\src\thread\symbian\SDL_systhread_c.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_thread.o : \SDL-1.2.13\src\thread\SDL_thread.c
	echo SDL_thread.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\thread\SDL_thread.c"

LISTINGUDEBSDL_thread : $(EPOCBLDUDEB)\SDL_thread.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\thread\SDL_thread.WINSCW.lst

$(EPOCBLDUREL)\SDL_thread.o : \SDL-1.2.13\src\thread\SDL_thread.c
	echo SDL_thread.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\thread\SDL_thread.c"

LISTINGURELSDL_thread : $(EPOCBLDUREL)\SDL_thread.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\thread\SDL_thread.WINSCW.lst



# Source SDL_syscond.c

$(EPOCBLDUDEB)\SDL_syscond.o \
$(EPOCBLDUREL)\SDL_syscond.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_syscond.o : \SDL-1.2.13\src\thread\generic\SDL_syscond.c
	echo SDL_syscond.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\thread\generic\SDL_syscond.c"

LISTINGUDEBSDL_syscond : $(EPOCBLDUDEB)\SDL_syscond.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\thread\generic\SDL_syscond.WINSCW.lst

$(EPOCBLDUREL)\SDL_syscond.o : \SDL-1.2.13\src\thread\generic\SDL_syscond.c
	echo SDL_syscond.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\thread\generic\SDL_syscond.c"

LISTINGURELSDL_syscond : $(EPOCBLDUREL)\SDL_syscond.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\thread\generic\SDL_syscond.WINSCW.lst



# Source SDL_sysmutex.cpp

$(EPOCBLDUDEB)\SDL_sysmutex.o \
$(EPOCBLDUREL)\SDL_sysmutex.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\e32capability.h \
	\UIQ3\EPOC32\include\e32cmn.h \
	\UIQ3\EPOC32\include\e32cmn.inl \
	\UIQ3\EPOC32\include\e32const.h \
	\UIQ3\EPOC32\include\e32def.h \
	\UIQ3\EPOC32\include\e32des16.h \
	\UIQ3\EPOC32\include\e32des8.h \
	\UIQ3\EPOC32\include\e32err.h \
	\UIQ3\EPOC32\include\e32std.h \
	\UIQ3\EPOC32\include\e32std.inl \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_sysmutex.o : \SDL-1.2.13\src\thread\symbian\SDL_sysmutex.cpp
	echo SDL_sysmutex.cpp
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\thread\symbian\SDL_sysmutex.cpp"

LISTINGUDEBSDL_sysmutex : $(EPOCBLDUDEB)\SDL_sysmutex.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\thread\symbian\SDL_sysmutex.WINSCW.lst

$(EPOCBLDUREL)\SDL_sysmutex.o : \SDL-1.2.13\src\thread\symbian\SDL_sysmutex.cpp
	echo SDL_sysmutex.cpp
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\thread\symbian\SDL_sysmutex.cpp"

LISTINGURELSDL_sysmutex : $(EPOCBLDUREL)\SDL_sysmutex.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\thread\symbian\SDL_sysmutex.WINSCW.lst



# Source SDL_syssem.cpp

$(EPOCBLDUDEB)\SDL_syssem.o \
$(EPOCBLDUREL)\SDL_syssem.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\e32capability.h \
	\UIQ3\EPOC32\include\e32cmn.h \
	\UIQ3\EPOC32\include\e32cmn.inl \
	\UIQ3\EPOC32\include\e32const.h \
	\UIQ3\EPOC32\include\e32def.h \
	\UIQ3\EPOC32\include\e32des16.h \
	\UIQ3\EPOC32\include\e32des8.h \
	\UIQ3\EPOC32\include\e32err.h \
	\UIQ3\EPOC32\include\e32std.h \
	\UIQ3\EPOC32\include\e32std.inl \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_syssem.o : \SDL-1.2.13\src\thread\symbian\SDL_syssem.cpp
	echo SDL_syssem.cpp
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\thread\symbian\SDL_syssem.cpp"

LISTINGUDEBSDL_syssem : $(EPOCBLDUDEB)\SDL_syssem.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\thread\symbian\SDL_syssem.WINSCW.lst

$(EPOCBLDUREL)\SDL_syssem.o : \SDL-1.2.13\src\thread\symbian\SDL_syssem.cpp
	echo SDL_syssem.cpp
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\thread\symbian\SDL_syssem.cpp"

LISTINGURELSDL_syssem : $(EPOCBLDUREL)\SDL_syssem.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\thread\symbian\SDL_syssem.WINSCW.lst



# Source SDL_systhread.cpp

$(EPOCBLDUDEB)\SDL_systhread.o \
$(EPOCBLDUREL)\SDL_systhread.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\SDL_error_c.h \
	\SDL-1.2.13\src\thread\SDL_systhread.h \
	\SDL-1.2.13\src\thread\SDL_thread_c.h \
	\SDL-1.2.13\src\thread\symbian\SDL_systhread_c.h \
	\UIQ3\EPOC32\include\e32capability.h \
	\UIQ3\EPOC32\include\e32cmn.h \
	\UIQ3\EPOC32\include\e32cmn.inl \
	\UIQ3\EPOC32\include\e32const.h \
	\UIQ3\EPOC32\include\e32def.h \
	\UIQ3\EPOC32\include\e32des16.h \
	\UIQ3\EPOC32\include\e32des8.h \
	\UIQ3\EPOC32\include\e32err.h \
	\UIQ3\EPOC32\include\e32std.h \
	\UIQ3\EPOC32\include\e32std.inl \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_systhread.o : \SDL-1.2.13\src\thread\symbian\SDL_systhread.cpp
	echo SDL_systhread.cpp
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\thread\symbian\SDL_systhread.cpp"

LISTINGUDEBSDL_systhread : $(EPOCBLDUDEB)\SDL_systhread.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\thread\symbian\SDL_systhread.WINSCW.lst

$(EPOCBLDUREL)\SDL_systhread.o : \SDL-1.2.13\src\thread\symbian\SDL_systhread.cpp
	echo SDL_systhread.cpp
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\thread\symbian\SDL_systhread.cpp"

LISTINGURELSDL_systhread : $(EPOCBLDUREL)\SDL_systhread.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\thread\symbian\SDL_systhread.WINSCW.lst



# Source SDL_active.c

$(EPOCBLDUDEB)\SDL_active.o \
$(EPOCBLDUREL)\SDL_active.o \
: \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_active.o : \SDL-1.2.13\src\events\SDL_active.c
	echo SDL_active.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\events\SDL_active.c"

LISTINGUDEBSDL_active : $(EPOCBLDUDEB)\SDL_active.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_active.WINSCW.lst

$(EPOCBLDUREL)\SDL_active.o : \SDL-1.2.13\src\events\SDL_active.c
	echo SDL_active.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\events\SDL_active.c"

LISTINGURELSDL_active : $(EPOCBLDUREL)\SDL_active.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_active.WINSCW.lst



# Source SDL_events.c

$(EPOCBLDUDEB)\SDL_events.o \
$(EPOCBLDUREL)\SDL_events.o \
: \
	\SDL-1.2.13\include\SDL.h \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_audio.h \
	\SDL-1.2.13\include\SDL_cdrom.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_cpuinfo.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_loadso.h \
	\SDL-1.2.13\include\SDL_main.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\SDL-1.2.13\src\events\SDL_sysevents.h \
	\SDL-1.2.13\src\joystick\SDL_joystick_c.h \
	\SDL-1.2.13\src\timer\SDL_timer_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_events.o : \SDL-1.2.13\src\events\SDL_events.c
	echo SDL_events.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\events\SDL_events.c"

LISTINGUDEBSDL_events : $(EPOCBLDUDEB)\SDL_events.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_events.WINSCW.lst

$(EPOCBLDUREL)\SDL_events.o : \SDL-1.2.13\src\events\SDL_events.c
	echo SDL_events.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\events\SDL_events.c"

LISTINGURELSDL_events : $(EPOCBLDUREL)\SDL_events.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_events.WINSCW.lst



# Source SDL_keyboard.c

$(EPOCBLDUDEB)\SDL_keyboard.o \
$(EPOCBLDUREL)\SDL_keyboard.o \
: \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\SDL-1.2.13\src\events\SDL_sysevents.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_keyboard.o : \SDL-1.2.13\src\events\SDL_keyboard.c
	echo SDL_keyboard.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\events\SDL_keyboard.c"

LISTINGUDEBSDL_keyboard : $(EPOCBLDUDEB)\SDL_keyboard.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_keyboard.WINSCW.lst

$(EPOCBLDUREL)\SDL_keyboard.o : \SDL-1.2.13\src\events\SDL_keyboard.c
	echo SDL_keyboard.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\events\SDL_keyboard.c"

LISTINGURELSDL_keyboard : $(EPOCBLDUREL)\SDL_keyboard.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_keyboard.WINSCW.lst



# Source SDL_mouse.c

$(EPOCBLDUDEB)\SDL_mouse.o \
$(EPOCBLDUREL)\SDL_mouse.o \
: \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\SDL-1.2.13\src\video\SDL_cursor_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_mouse.o : \SDL-1.2.13\src\events\SDL_mouse.c
	echo SDL_mouse.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\events\SDL_mouse.c"

LISTINGUDEBSDL_mouse : $(EPOCBLDUDEB)\SDL_mouse.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_mouse.WINSCW.lst

$(EPOCBLDUREL)\SDL_mouse.o : \SDL-1.2.13\src\events\SDL_mouse.c
	echo SDL_mouse.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\events\SDL_mouse.c"

LISTINGURELSDL_mouse : $(EPOCBLDUREL)\SDL_mouse.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_mouse.WINSCW.lst



# Source SDL_quit.c

$(EPOCBLDUDEB)\SDL_quit.o \
$(EPOCBLDUREL)\SDL_quit.o \
: \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_quit.o : \SDL-1.2.13\src\events\SDL_quit.c
	echo SDL_quit.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\events\SDL_quit.c"

LISTINGUDEBSDL_quit : $(EPOCBLDUDEB)\SDL_quit.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_quit.WINSCW.lst

$(EPOCBLDUREL)\SDL_quit.o : \SDL-1.2.13\src\events\SDL_quit.c
	echo SDL_quit.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\events\SDL_quit.c"

LISTINGURELSDL_quit : $(EPOCBLDUREL)\SDL_quit.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_quit.WINSCW.lst



# Source SDL_resize.c

$(EPOCBLDUDEB)\SDL_resize.o \
$(EPOCBLDUREL)\SDL_resize.o \
: \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_resize.o : \SDL-1.2.13\src\events\SDL_resize.c
	echo SDL_resize.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\events\SDL_resize.c"

LISTINGUDEBSDL_resize : $(EPOCBLDUDEB)\SDL_resize.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_resize.WINSCW.lst

$(EPOCBLDUREL)\SDL_resize.o : \SDL-1.2.13\src\events\SDL_resize.c
	echo SDL_resize.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\events\SDL_resize.c"

LISTINGURELSDL_resize : $(EPOCBLDUREL)\SDL_resize.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\events\SDL_resize.WINSCW.lst



# Source SDL_timer.c

$(EPOCBLDUDEB)\SDL_timer.o \
$(EPOCBLDUREL)\SDL_timer.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\timer\SDL_systimer.h \
	\SDL-1.2.13\src\timer\SDL_timer_c.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_timer.o : \SDL-1.2.13\src\timer\SDL_timer.c
	echo SDL_timer.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\timer\SDL_timer.c"

LISTINGUDEBSDL_timer : $(EPOCBLDUDEB)\SDL_timer.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\timer\SDL_timer.WINSCW.lst

$(EPOCBLDUREL)\SDL_timer.o : \SDL-1.2.13\src\timer\SDL_timer.c
	echo SDL_timer.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\timer\SDL_timer.c"

LISTINGURELSDL_timer : $(EPOCBLDUREL)\SDL_timer.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\timer\SDL_timer.WINSCW.lst



# Source SDL_systimer.cpp

$(EPOCBLDUDEB)\SDL_systimer.o \
$(EPOCBLDUREL)\SDL_systimer.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_mutex.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_thread.h \
	\SDL-1.2.13\include\SDL_timer.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\timer\SDL_timer_c.h \
	\UIQ3\EPOC32\include\e32capability.h \
	\UIQ3\EPOC32\include\e32cmn.h \
	\UIQ3\EPOC32\include\e32cmn.inl \
	\UIQ3\EPOC32\include\e32const.h \
	\UIQ3\EPOC32\include\e32def.h \
	\UIQ3\EPOC32\include\e32des16.h \
	\UIQ3\EPOC32\include\e32des8.h \
	\UIQ3\EPOC32\include\e32err.h \
	\UIQ3\EPOC32\include\e32hal.h \
	\UIQ3\EPOC32\include\e32std.h \
	\UIQ3\EPOC32\include\e32std.inl \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_systimer.o : \SDL-1.2.13\src\timer\symbian\SDL_systimer.cpp
	echo SDL_systimer.cpp
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\timer\symbian\SDL_systimer.cpp"

LISTINGUDEBSDL_systimer : $(EPOCBLDUDEB)\SDL_systimer.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\timer\symbian\SDL_systimer.WINSCW.lst

$(EPOCBLDUREL)\SDL_systimer.o : \SDL-1.2.13\src\timer\symbian\SDL_systimer.cpp
	echo SDL_systimer.cpp
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\timer\symbian\SDL_systimer.cpp"

LISTINGURELSDL_systimer : $(EPOCBLDUREL)\SDL_systimer.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\timer\symbian\SDL_systimer.WINSCW.lst



# Source SDL_rwops.c

$(EPOCBLDUDEB)\SDL_rwops.o \
$(EPOCBLDUREL)\SDL_rwops.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_rwops.o : \SDL-1.2.13\src\file\SDL_rwops.c
	echo SDL_rwops.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\file\SDL_rwops.c"

LISTINGUDEBSDL_rwops : $(EPOCBLDUDEB)\SDL_rwops.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\file\SDL_rwops.WINSCW.lst

$(EPOCBLDUREL)\SDL_rwops.o : \SDL-1.2.13\src\file\SDL_rwops.c
	echo SDL_rwops.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\file\SDL_rwops.c"

LISTINGURELSDL_rwops : $(EPOCBLDUREL)\SDL_rwops.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\file\SDL_rwops.WINSCW.lst



# Source SDL_joystick.c

$(EPOCBLDUDEB)\SDL_joystick.o \
$(EPOCBLDUREL)\SDL_joystick.o \
: \
	\SDL-1.2.13\include\SDL_active.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_events.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_keyboard.h \
	\SDL-1.2.13\include\SDL_keysym.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_quit.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\events\SDL_events_c.h \
	\SDL-1.2.13\src\joystick\SDL_joystick_c.h \
	\SDL-1.2.13\src\joystick\SDL_sysjoystick.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_joystick.o : \SDL-1.2.13\src\joystick\SDL_joystick.c
	echo SDL_joystick.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\joystick\SDL_joystick.c"

LISTINGUDEBSDL_joystick : $(EPOCBLDUDEB)\SDL_joystick.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\joystick\SDL_joystick.WINSCW.lst

$(EPOCBLDUREL)\SDL_joystick.o : \SDL-1.2.13\src\joystick\SDL_joystick.c
	echo SDL_joystick.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\joystick\SDL_joystick.c"

LISTINGURELSDL_joystick : $(EPOCBLDUREL)\SDL_joystick.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\joystick\SDL_joystick.WINSCW.lst



# Source SDL_SysJoystick.cpp

$(EPOCBLDUDEB)\SDL_SysJoystick.o \
$(EPOCBLDUREL)\SDL_SysJoystick.o \
: \
	\SDL-1.2.13\Symbian\IniFile.h \
	\SDL-1.2.13\Symbian\ebasicapp.h \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_error.h \
	\SDL-1.2.13\include\SDL_joystick.h \
	\SDL-1.2.13\include\SDL_mouse.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_rwops.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\SDL_syswm.h \
	\SDL-1.2.13\include\SDL_version.h \
	\SDL-1.2.13\include\SDL_video.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\SDL-1.2.13\src\joystick\SDL_joystick_c.h \
	\SDL-1.2.13\src\joystick\SDL_sysjoystick.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\SDL_sysvideo.h \
	\SDL-1.2.13\src\video\symbian\SDL_epocvideo.h \
	\UIQ3\EPOC32\include\Babitflags.h \
	\UIQ3\EPOC32\include\CoeLayoutMan.h \
	\UIQ3\EPOC32\include\Ecom\EComErrorCodes.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.h \
	\UIQ3\EPOC32\include\Ecom\EComResolverParams.inl \
	\UIQ3\EPOC32\include\Ecom\Ecom.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.h \
	\UIQ3\EPOC32\include\Ecom\ImplementationInformation.inl \
	\UIQ3\EPOC32\include\FbsMessage.h \
	\UIQ3\EPOC32\include\LineBreak.h \
	\UIQ3\EPOC32\include\QUiConfigClient.h \
	\UIQ3\EPOC32\include\QikCategory.hrh \
	\UIQ3\EPOC32\include\QikCategoryModel.h \
	\UIQ3\EPOC32\include\QikCommand.hrh \
	\UIQ3\EPOC32\include\QikCommandManager.h \
	\UIQ3\EPOC32\include\QikContainer.h \
	\UIQ3\EPOC32\include\QikControlProvider.h \
	\UIQ3\EPOC32\include\QikFactories.h \
	\UIQ3\EPOC32\include\QikFlowLayoutManager.h \
	\UIQ3\EPOC32\include\QikLayoutManager.h \
	\UIQ3\EPOC32\include\QikLayoutValues.h \
	\UIQ3\EPOC32\include\QikUiConfigDataTypes.h \
	\UIQ3\EPOC32\include\QikViewFurniture.h \
	\UIQ3\EPOC32\include\Qikon.hrh \
	\UIQ3\EPOC32\include\apacmdln.h \
	\UIQ3\EPOC32\include\apadef.h \
	\UIQ3\EPOC32\include\apaflrec.h \
	\UIQ3\EPOC32\include\apaid.h \
	\UIQ3\EPOC32\include\apmstd.h \
	\UIQ3\EPOC32\include\apparc.h \
	\UIQ3\EPOC32\include\babitflags.h \
	\UIQ3\EPOC32\include\badesca.h \
	\UIQ3\EPOC32\include\baerrhan.h \
	\UIQ3\EPOC32\include\bamdesca.h \
	\UIQ3\EPOC32\include\barsc.h \
	\UIQ3\EPOC32\include\basched.h \
	\UIQ3\EPOC32\include\bidi.h \
	\UIQ3\EPOC32\include\biditext.h \
	\UIQ3\EPOC32\include\bitbase.h \
	\UIQ3\EPOC32\include\bitdev.h \
	\UIQ3\EPOC32\include\bitdev.inl \
	\UIQ3\EPOC32\include\bitmap.h \
	\UIQ3\EPOC32\include\bitstd.h \
	\UIQ3\EPOC32\include\coeaui.h \
	\UIQ3\EPOC32\include\coecntrl.h \
	\UIQ3\EPOC32\include\coecobs.h \
	\UIQ3\EPOC32\include\coecontrolarray.h \
	\UIQ3\EPOC32\include\coedef.h \
	\UIQ3\EPOC32\include\coefont.h \
	\UIQ3\EPOC32\include\coehelp.h \
	\UIQ3\EPOC32\include\coeinput.h \
	\UIQ3\EPOC32\include\coemain.h \
	\UIQ3\EPOC32\include\coemop.h \
	\UIQ3\EPOC32\include\coetextdrawer.h \
	\UIQ3\EPOC32\include\coeview.h \
	\UIQ3\EPOC32\include\d32locd.h \
	\UIQ3\EPOC32\include\d32locd.inl \
	\UIQ3\EPOC32\include\e32base.h \
	\UIQ3\EPOC32\include\e32base.inl \
	\UIQ3\EPOC32\include\e32capability.h \
	\UIQ3\EPOC32\include\e32cmn.h \
	\UIQ3\EPOC32\include\e32cmn.inl \
	\UIQ3\EPOC32\include\e32const.h \
	\UIQ3\EPOC32\include\e32debug.h \
	\UIQ3\EPOC32\include\e32def.h \
	\UIQ3\EPOC32\include\e32des16.h \
	\UIQ3\EPOC32\include\e32des8.h \
	\UIQ3\EPOC32\include\e32err.h \
	\UIQ3\EPOC32\include\e32event.h \
	\UIQ3\EPOC32\include\e32hal.h \
	\UIQ3\EPOC32\include\e32keys.h \
	\UIQ3\EPOC32\include\e32ktran.h \
	\UIQ3\EPOC32\include\e32ldr.h \
	\UIQ3\EPOC32\include\e32lmsg.h \
	\UIQ3\EPOC32\include\e32notif.h \
	\UIQ3\EPOC32\include\e32std.h \
	\UIQ3\EPOC32\include\e32std.inl \
	\UIQ3\EPOC32\include\e32svr.h \
	\UIQ3\EPOC32\include\eikamnt.h \
	\UIQ3\EPOC32\include\eikapp.h \
	\UIQ3\EPOC32\include\eikappui.h \
	\UIQ3\EPOC32\include\eikaufty.h \
	\UIQ3\EPOC32\include\eikbctrl.h \
	\UIQ3\EPOC32\include\eikbtgrp.h \
	\UIQ3\EPOC32\include\eikcmobs.h \
	\UIQ3\EPOC32\include\eikcolor.hrh \
	\UIQ3\EPOC32\include\eikdef.h \
	\UIQ3\EPOC32\include\eikdgfty.h \
	\UIQ3\EPOC32\include\eikdoc.h \
	\UIQ3\EPOC32\include\eikenv.h \
	\UIQ3\EPOC32\include\eikfctry.h \
	\UIQ3\EPOC32\include\eiklibry.h \
	\UIQ3\EPOC32\include\eikmobs.h \
	\UIQ3\EPOC32\include\eikon.hrh \
	\UIQ3\EPOC32\include\eikprogi.h \
	\UIQ3\EPOC32\include\eikvcurs.h \
	\UIQ3\EPOC32\include\f32file.h \
	\UIQ3\EPOC32\include\f32file.inl \
	\UIQ3\EPOC32\include\fbs.h \
	\UIQ3\EPOC32\include\fldbase.h \
	\UIQ3\EPOC32\include\fldbltin.h \
	\UIQ3\EPOC32\include\fldinfo.h \
	\UIQ3\EPOC32\include\fldset.h \
	\UIQ3\EPOC32\include\fntstore.h \
	\UIQ3\EPOC32\include\frmlaydt.h \
	\UIQ3\EPOC32\include\frmparam.h \
	\UIQ3\EPOC32\include\frmtlay.h \
	\UIQ3\EPOC32\include\frmvis.h \
	\UIQ3\EPOC32\include\gdi.h \
	\UIQ3\EPOC32\include\gdi.inl \
	\UIQ3\EPOC32\include\graphicsaccelerator.h \
	\UIQ3\EPOC32\include\gulalign.h \
	\UIQ3\EPOC32\include\gulbordr.h \
	\UIQ3\EPOC32\include\gulcolor.h \
	\UIQ3\EPOC32\include\guldef.h \
	\UIQ3\EPOC32\include\gulftflg.hrh \
	\UIQ3\EPOC32\include\gulutil.h \
	\UIQ3\EPOC32\include\lafmain.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\EPOC32\include\openfont.h \
	\UIQ3\EPOC32\include\partitions.h \
	\UIQ3\EPOC32\include\qikappui.h \
	\UIQ3\EPOC32\include\qikdocument.h \
	\UIQ3\EPOC32\include\qikon.hrh \
	\UIQ3\EPOC32\include\qikstockcontrols.hrh \
	\UIQ3\EPOC32\include\qiktoolbar.h \
	\UIQ3\EPOC32\include\qikviewbase.h \
	\UIQ3\EPOC32\include\quartz.mbg \
	\UIQ3\EPOC32\include\s32buf.h \
	\UIQ3\EPOC32\include\s32buf.inl \
	\UIQ3\EPOC32\include\s32file.h \
	\UIQ3\EPOC32\include\s32file.inl \
	\UIQ3\EPOC32\include\s32page.h \
	\UIQ3\EPOC32\include\s32page.inl \
	\UIQ3\EPOC32\include\s32share.h \
	\UIQ3\EPOC32\include\s32share.inl \
	\UIQ3\EPOC32\include\s32std.h \
	\UIQ3\EPOC32\include\s32std.inl \
	\UIQ3\EPOC32\include\s32stor.h \
	\UIQ3\EPOC32\include\s32stor.inl \
	\UIQ3\EPOC32\include\s32strm.h \
	\UIQ3\EPOC32\include\s32strm.inl \
	\UIQ3\EPOC32\include\savenotf.h \
	\UIQ3\EPOC32\include\tagma.h \
	\UIQ3\EPOC32\include\txtetext.h \
	\UIQ3\EPOC32\include\txtetext.inl \
	\UIQ3\EPOC32\include\txtfmlyr.h \
	\UIQ3\EPOC32\include\txtfmlyr.inl \
	\UIQ3\EPOC32\include\txtfmstm.h \
	\UIQ3\EPOC32\include\txtfrmat.h \
	\UIQ3\EPOC32\include\txtfrmat.inl \
	\UIQ3\EPOC32\include\txtstyle.h \
	\UIQ3\EPOC32\include\txtstyle.inl \
	\UIQ3\EPOC32\include\uikon.hrh \
	\UIQ3\EPOC32\include\vwsdef.h \
	\UIQ3\EPOC32\include\w32std.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_SysJoystick.o : \SDL-1.2.13\src\joystick\symbian\SDL_SysJoystick.cpp
	echo SDL_SysJoystick.cpp
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\joystick\symbian\SDL_SysJoystick.cpp"

LISTINGUDEBSDL_SysJoystick : $(EPOCBLDUDEB)\SDL_SysJoystick.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\joystick\symbian\SDL_SysJoystick.WINSCW.lst

$(EPOCBLDUREL)\SDL_SysJoystick.o : \SDL-1.2.13\src\joystick\symbian\SDL_SysJoystick.cpp
	echo SDL_SysJoystick.cpp
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\joystick\symbian\SDL_SysJoystick.cpp"

LISTINGURELSDL_SysJoystick : $(EPOCBLDUREL)\SDL_SysJoystick.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\joystick\symbian\SDL_SysJoystick.WINSCW.lst



# Source SDL_getenv.c

$(EPOCBLDUDEB)\SDL_getenv.o \
$(EPOCBLDUREL)\SDL_getenv.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_getenv.o : \SDL-1.2.13\src\stdlib\SDL_getenv.c
	echo SDL_getenv.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_getenv.c"

LISTINGUDEBSDL_getenv : $(EPOCBLDUDEB)\SDL_getenv.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_getenv.WINSCW.lst

$(EPOCBLDUREL)\SDL_getenv.o : \SDL-1.2.13\src\stdlib\SDL_getenv.c
	echo SDL_getenv.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_getenv.c"

LISTINGURELSDL_getenv : $(EPOCBLDUREL)\SDL_getenv.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_getenv.WINSCW.lst



# Source SDL_iconv.c

$(EPOCBLDUDEB)\SDL_iconv.o \
$(EPOCBLDUREL)\SDL_iconv.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_endian.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_iconv.o : \SDL-1.2.13\src\stdlib\SDL_iconv.c
	echo SDL_iconv.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_iconv.c"

LISTINGUDEBSDL_iconv : $(EPOCBLDUDEB)\SDL_iconv.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_iconv.WINSCW.lst

$(EPOCBLDUREL)\SDL_iconv.o : \SDL-1.2.13\src\stdlib\SDL_iconv.c
	echo SDL_iconv.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_iconv.c"

LISTINGURELSDL_iconv : $(EPOCBLDUREL)\SDL_iconv.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_iconv.WINSCW.lst



# Source SDL_malloc.c

$(EPOCBLDUDEB)\SDL_malloc.o \
$(EPOCBLDUREL)\SDL_malloc.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_malloc.o : \SDL-1.2.13\src\stdlib\SDL_malloc.c
	echo SDL_malloc.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_malloc.c"

LISTINGUDEBSDL_malloc : $(EPOCBLDUDEB)\SDL_malloc.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_malloc.WINSCW.lst

$(EPOCBLDUREL)\SDL_malloc.o : \SDL-1.2.13\src\stdlib\SDL_malloc.c
	echo SDL_malloc.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_malloc.c"

LISTINGURELSDL_malloc : $(EPOCBLDUREL)\SDL_malloc.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_malloc.WINSCW.lst



# Source SDL_qsort.c

$(EPOCBLDUDEB)\SDL_qsort.o \
$(EPOCBLDUREL)\SDL_qsort.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_qsort.o : \SDL-1.2.13\src\stdlib\SDL_qsort.c
	echo SDL_qsort.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_qsort.c"

LISTINGUDEBSDL_qsort : $(EPOCBLDUDEB)\SDL_qsort.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_qsort.WINSCW.lst

$(EPOCBLDUREL)\SDL_qsort.o : \SDL-1.2.13\src\stdlib\SDL_qsort.c
	echo SDL_qsort.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_qsort.c"

LISTINGURELSDL_qsort : $(EPOCBLDUREL)\SDL_qsort.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_qsort.WINSCW.lst



# Source SDL_stdlib.c

$(EPOCBLDUDEB)\SDL_stdlib.o \
$(EPOCBLDUREL)\SDL_stdlib.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_stdlib.o : \SDL-1.2.13\src\stdlib\SDL_stdlib.c
	echo SDL_stdlib.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_stdlib.c"

LISTINGUDEBSDL_stdlib : $(EPOCBLDUDEB)\SDL_stdlib.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_stdlib.WINSCW.lst

$(EPOCBLDUREL)\SDL_stdlib.o : \SDL-1.2.13\src\stdlib\SDL_stdlib.c
	echo SDL_stdlib.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_stdlib.c"

LISTINGURELSDL_stdlib : $(EPOCBLDUREL)\SDL_stdlib.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_stdlib.WINSCW.lst



# Source SDL_string.c

$(EPOCBLDUDEB)\SDL_string.o \
$(EPOCBLDUREL)\SDL_string.o \
: \
	\SDL-1.2.13\include\SDL_config.h \
	\SDL-1.2.13\include\SDL_config_symbian.h \
	\SDL-1.2.13\include\SDL_platform.h \
	\SDL-1.2.13\include\SDL_stdinc.h \
	\SDL-1.2.13\include\begin_code.h \
	\SDL-1.2.13\include\close_code.h \
	\UIQ3\EPOC32\include\libc\_ansi.h \
	\UIQ3\EPOC32\include\libc\ctype.h \
	\UIQ3\EPOC32\include\libc\machine\types.h \
	\UIQ3\EPOC32\include\libc\stdarg.h \
	\UIQ3\EPOC32\include\libc\stdarg_e.h \
	\UIQ3\EPOC32\include\libc\stddef.h \
	\UIQ3\EPOC32\include\libc\stdio.h \
	\UIQ3\EPOC32\include\libc\stdlib.h \
	\UIQ3\EPOC32\include\libc\string.h \
	\UIQ3\EPOC32\include\libc\sys\reent.h \
	\UIQ3\EPOC32\include\libc\sys\stdio_t.h \
	\UIQ3\EPOC32\include\libc\sys\types.h \
	\UIQ3\EPOC32\include\libc\time.h \
	\UIQ3\epoc32\include\variant\Symbian_OS_v9.1.hrh \
	\UIQ3\epoc32\include\variant\UIQ_3.0.hrh

$(EPOCBLDUDEB)\SDL_string.o : \SDL-1.2.13\src\stdlib\SDL_string.c
	echo SDL_string.c
	$(CWUDEB) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_string.c"

LISTINGUDEBSDL_string : $(EPOCBLDUDEB)\SDL_string.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_string.WINSCW.lst

$(EPOCBLDUREL)\SDL_string.o : \SDL-1.2.13\src\stdlib\SDL_string.c
	echo SDL_string.c
	$(CWUREL) -o "$@" -c "\SDL-1.2.13\src\stdlib\SDL_string.c"

LISTINGURELSDL_string : $(EPOCBLDUREL)\SDL_string.lis
	perl -S ecopyfile.pl $? \SDL-1.2.13\src\stdlib\SDL_string.WINSCW.lst



ROMFILE:

# Implicit rule for generating .lis files

.SUFFIXES : .lis .o

.o.lis:
	$(COMPILER_PATH)mwldsym2.exe -msgstyle gcc -S -show source,unmangled,comments $< -o $@




WHATGENERIC CLEANGENERIC :
	@rem none

# Rules to create all necessary directories

GENERIC_MAKEWORK : \
	\UIQ3\EPOC32\BUILD\SDL-1.2.13\Symbian\UIQ3\esdl_uiq3\WINSCW
MAKEWORKLIBRARY : \
	\UIQ3\EPOC32\RELEASE\WINSCW\UDEB
MAKEWORKUDEB : \
	\UIQ3\EPOC32\BUILD\SDL-1.2.13\Symbian\UIQ3\esdl_uiq3\WINSCW\UDEB \
	\UIQ3\EPOC32\RELEASE\WINSCW\UDEB
MAKEWORKUREL : \
	\UIQ3\EPOC32\BUILD\SDL-1.2.13\Symbian\UIQ3\esdl_uiq3\WINSCW\UREL \
	\UIQ3\EPOC32\RELEASE\WINSCW\UREL

\UIQ3\EPOC32\BUILD\SDL-1.2.13\Symbian\UIQ3\esdl_uiq3\WINSCW \
\UIQ3\EPOC32\BUILD\SDL-1.2.13\Symbian\UIQ3\esdl_uiq3\WINSCW\UDEB \
\UIQ3\EPOC32\BUILD\SDL-1.2.13\Symbian\UIQ3\esdl_uiq3\WINSCW\UREL \
\UIQ3\EPOC32\RELEASE\WINSCW\UDEB \
\UIQ3\EPOC32\RELEASE\WINSCW\UREL \
:
	perl -S emkdir.pl $@

