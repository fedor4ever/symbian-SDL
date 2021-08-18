# Microsoft Developer Studio Project File - Name="ESDL" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=ESDL - Win32 Uni Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ESDL.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ESDL.mak" CFG="ESDL - Win32 Uni Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ESDL - Win32 Uni Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "ESDL - Win32 Uni Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ESDL - Win32 Uni Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Win32_U0"
# PROP BASE Intermediate_Dir ".\Win32_U0"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "\s60v2\EPOC32\RELEASE\WINS\UDEB"
# PROP Intermediate_Dir "\s60v2\EPOC32\BUILD\SDL-1.2.13\SYMBIAN\S60V2\ESDL_S60\WINS\UDEB"
# ADD CPP /nologo /Zp4 /GF /MDd /W4 /Zi /Od /X /I "\SDL-1.2.13\SYMBIAN" /I "\SDL-1.2.13\SYMBIAN\S60V2" /I "\SDL-1.2.13\INCLUDE" /I "\SDL-1.2.13\SRC" /I "\SDL-1.2.13\SRC\VIDEO" /I "\SDL-1.2.13\SRC\VIDEO\SYMBIAN" /I "\SDL-1.2.13\SRC\EVENTS" /I "\SDL-1.2.13\SRC\MAIN\SYMBIAN" /I "\SDL-1.2.13\SRC\THREAD" /I "\SDL-1.2.13\SRC\THREAD\GENERIC" /I "\SDL-1.2.13\SRC\THREAD\SYMBIAN" /I "\SDL-1.2.13\SRC\TIMER" /I "\SDL-1.2.13\SRC\JOYSTICK" /I "\SDL-1.2.13\SRC\CDROM" /I "\SDL-1.2.13\SRC\AUDIO" /I "\SDL-1.2.13\SRC\AUDIO\SYMBIAN" /I "\s60v2\EPOC32\INCLUDE" /I "\s60v2\EPOC32\INCLUDE\LIBC" /D "__SYMBIAN32__" /D "__VC32__" /D "__WINS__" /D "S60" /D "NO_SIGNAL_H" /D "DISABLE_CDROM" /D "_DEBUG" /D "_UNICODE" /FR /Fd"\s60v2\EPOC32\RELEASE\WINS\UDEB\ESDL.PDB" /c
# ADD BASE RSC /l 0x809
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /machine:IX86
# ADD LIB32 "\s60v2\EPOC32\RELEASE\WINS\UDEB\avkon.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\euser.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\fbscli.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\estlib.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\ws32.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\hal.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\gdi.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\bitgdi.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\mediaclientaudiostream.lib" /nologo /subsystem:windows /machine:IX86 /nodefaultlib /out:"\s60v2\EPOC32\RELEASE\WINS\UDEB\ESDL.LIB"

!ELSEIF  "$(CFG)" == "ESDL - Win32 Uni Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Win32_Un"
# PROP BASE Intermediate_Dir ".\Win32_Un"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "\s60v2\EPOC32\RELEASE\WINS\UREL"
# PROP Intermediate_Dir "\s60v2\EPOC32\BUILD\SDL-1.2.13\SYMBIAN\S60V2\ESDL_S60\WINS\UREL"
# ADD CPP /nologo /Zp4 /GF /MD /W4 /O1 /Op /X /I "\SDL-1.2.13\SYMBIAN" /I "\SDL-1.2.13\SYMBIAN\S60V2" /I "\SDL-1.2.13\INCLUDE" /I "\SDL-1.2.13\SRC" /I "\SDL-1.2.13\SRC\VIDEO" /I "\SDL-1.2.13\SRC\VIDEO\SYMBIAN" /I "\SDL-1.2.13\SRC\EVENTS" /I "\SDL-1.2.13\SRC\MAIN\SYMBIAN" /I "\SDL-1.2.13\SRC\THREAD" /I "\SDL-1.2.13\SRC\THREAD\GENERIC" /I "\SDL-1.2.13\SRC\THREAD\SYMBIAN" /I "\SDL-1.2.13\SRC\TIMER" /I "\SDL-1.2.13\SRC\JOYSTICK" /I "\SDL-1.2.13\SRC\CDROM" /I "\SDL-1.2.13\SRC\AUDIO" /I "\SDL-1.2.13\SRC\AUDIO\SYMBIAN" /I "\s60v2\EPOC32\INCLUDE" /I "\s60v2\EPOC32\INCLUDE\LIBC" /D "__SYMBIAN32__" /D "__VC32__" /D "__WINS__" /D "S60" /D "NO_SIGNAL_H" /D "DISABLE_CDROM" /D "NDEBUG" /D "_UNICODE" /c
# ADD BASE RSC /l 0x809
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /machine:IX86
# ADD LIB32 "\s60v2\EPOC32\RELEASE\WINS\UDEB\avkon.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\euser.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\fbscli.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\estlib.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\ws32.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\hal.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\gdi.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\bitgdi.lib" "\s60v2\EPOC32\RELEASE\WINS\UDEB\mediaclientaudiostream.lib" /nologo /subsystem:windows /machine:IX86 /nodefaultlib /out:"\s60v2\EPOC32\RELEASE\WINS\UREL\ESDL.LIB"

!ENDIF 

# Begin Target

# Name "ESDL - Win32 Uni Debug"
# Name "ESDL - Win32 Uni Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Audio\sdl_audio.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Audio\sdl_audiocvt.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Audio\sdl_audiodev.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Audio\sdl_mixer.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Audio\sdl_wave.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Audio\symbian\sdl_symbianaudio.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Cdrom\dummy\sdl_syscdrom.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Cdrom\sdl_cdrom.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Cpuinfo\sdl_cpuinfo.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Events\sdl_active.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Events\sdl_events.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Events\sdl_keyboard.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Events\sdl_mouse.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Events\sdl_quit.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Events\sdl_resize.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\File\sdl_rwops.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Joystick\sdl_joystick.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Joystick\symbian\sdl_sysjoystick.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Sdl.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Sdl_error.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Sdl_fatal.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Stdlib\sdl_getenv.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Stdlib\sdl_iconv.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Stdlib\sdl_malloc.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Stdlib\sdl_qsort.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Stdlib\sdl_stdlib.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Stdlib\sdl_string.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Thread\sdl_thread.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Thread\symbian\sdl_sysmutex.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Thread\symbian\sdl_syssem.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Thread\symbian\sdl_systhread.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Timer\sdl_timer.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Timer\symbian\sdl_systimer.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_blit.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_blit_0.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_blit_1.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_blit_a.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_blit_n.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_bmp.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_cursor.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_gamma.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_pixels.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_rleaccel.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_stretch.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_surface.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_video.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_yuv.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\sdl_yuv_sw.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\symbian\sdl_epocevents.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Video\symbian\sdl_epocvideo.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SYMBIAN\Ebasicapp.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SYMBIAN\Inifile.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SYMBIAN\Sdlsxxview.cpp
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\AUDIO\Sdl_mixer_m68k.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_endian.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\AUDIO\Sdl_audio_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\THREAD\SYMBIAN\Sdl_systhread_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_active.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_mouse.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_platform.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\TIMER\Sdl_systimer.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SYMBIAN\Ebasicapp.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_timer.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_audio.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\Sdl_yuvfuncs.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SYMBIAN\Sdlsxxview.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\SYMBIAN\Sdl_epocvideo.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_cpuinfo.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_video.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\Sdl_pixels_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SYMBIAN\Sdlapp.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_keysym.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SYMBIAN\Inifile.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_main.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\Sdl_stretch_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_cdrom.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\Sdl_cursor_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\AUDIO\Sdl_mixer_mmx_vc.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_stdinc.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\Sdl_blit.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Close_code.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\CDROM\Sdl_syscdrom.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\AUDIO\Sdl_mixer_mmx.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Sdl_fatal.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_config.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_mutex.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\THREAD\Sdl_thread_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\AUDIO\Sdl_sysaudio.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_quit.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\AUDIO\Sdl_wave.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\Sdl_error_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\JOYSTICK\Sdl_joystick_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_keyboard.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_loadso.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\Sdl_rleaccel_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\Sdl_yuv_sw_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_events.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_syswm.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\JOYSTICK\Sdl_sysjoystick.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\AUDIO\SYMBIAN\Sdl_symbianaudio.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_error.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\Sdl_leaks.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_thread.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\AUDIO\Sdl_audiomem.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_joystick.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\SYMBIAN\Sdl_epocevents_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\EVENTS\Sdl_events_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Begin_code.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\EVENTS\Sdl_sysevents.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\Default_cursor.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_config_symbian.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\TIMER\Sdl_timer_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\SYMBIAN\Sdl_epocvideo_s60.inl
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_rwops.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\VIDEO\Sdl_sysvideo.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\SRC\THREAD\Sdl_systhread.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\INCLUDE\Sdl_version.h
# End Source File
# End Group
# End Target
# End Project
