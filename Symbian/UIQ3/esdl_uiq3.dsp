# Microsoft Developer Studio Project File - Name="ESDL" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) External Target" 0x0106

CFG=ESDL - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ESDL.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ESDL.mak" CFG="ESDL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ESDL - Win32 Release" (based on "Win32 (x86) External Target")
!MESSAGE "ESDL - Win32 Debug" (based on "Win32 (x86) External Target")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""

!IF  "$(CFG)" == "ESDL - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Cmd_Line "NMAKE /f ESDL.mak "
# PROP BASE Rebuild_Opt "/a"
# PROP BASE Target_File "ESDL.lib"
# PROP BASE Bsc_Name "ESDL.bsc"
# PROP BASE Target_Dir ""
# PROP Use_MFC
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "\UIQ3\EPOC32\RELEASE\WINSCW\UDEB"
# PROP Intermediate_Dir "\UIQ3\EPOC32\BUILD\SDL-1.2.13\Symbian\UIQ3\esdl_uiq3\WINSCW\UDEB"
# PROP Cmd_Line ""\UIQ3\epoc32\tools\MAKE.exe" -r -f esdl_uiq3_UDEB.mak "
# PROP Rebuild_Opt "REBUILD"
# PROP Target_File "ESDL.lib"
# PROP Bsc_Name ""
# PROP Target_Dir ""

!ELSEIF  "$(CFG)" == "ESDL - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Cmd_Line "NMAKE /f ESDL.mak "
# PROP BASE Rebuild_Opt "/a"
# PROP BASE Target_File "ESDL.lib"
# PROP BASE Bsc_Name "ESDL.bsc"
# PROP BASE Target_Dir ""
# PROP Use_MFC
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "\UIQ3\EPOC32\RELEASE\WINSCW\UREL"
# PROP Intermediate_Dir "\UIQ3\EPOC32\BUILD\SDL-1.2.13\Symbian\UIQ3\esdl_uiq3\WINSCW\UREL"
# PROP Cmd_Line ""\UIQ3\epoc32\tools\MAKE.exe" -r -f esdl_uiq3_UREL.mak "
# PROP Rebuild_Opt "REBUILD"
# PROP Target_File "ESDL.lib"
# PROP Bsc_Name "ESDL.bsc"
# PROP Target_Dir ""


!ENDIF

# Begin Target

# Name "ESDL - Win32 Debug"
# Name "ESDL - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=\SDL-1.2.13\Symbian\Ebasicapp.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\Symbian\Inifile.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\Sdl.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\Sdl_error.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\Sdl_fatal.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\cpuinfo\Sdl_cpuinfo.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\cdrom\Sdl_cdrom.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\cdrom\dummy\Sdl_syscdrom.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_audio.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_audiocvt.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_audiodev.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_mixer.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_wave.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\symbian\Sdl_symbianaudio.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_blit.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_blit_0.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_blit_1.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_blit_a.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_blit_n.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_bmp.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_cursor.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_gamma.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_pixels.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_rleaccel.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_stretch.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_surface.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_video.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_yuv.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_yuv_sw.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\symbian\Sdl_epocvideo.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\symbian\Sdl_epocevents.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\thread\Sdl_thread.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\thread\generic\Sdl_syscond.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\thread\symbian\Sdl_sysmutex.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\thread\symbian\Sdl_syssem.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\thread\symbian\Sdl_systhread.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\events\Sdl_active.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\events\Sdl_events.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\events\Sdl_keyboard.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\events\Sdl_mouse.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\events\Sdl_quit.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\events\Sdl_resize.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\timer\Sdl_timer.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\timer\symbian\Sdl_systimer.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\file\Sdl_rwops.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\joystick\Sdl_joystick.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\joystick\symbian\Sdl_sysjoystick.cpp
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\stdlib\Sdl_getenv.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\stdlib\Sdl_iconv.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\stdlib\Sdl_malloc.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\stdlib\Sdl_qsort.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\stdlib\Sdl_stdlib.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\stdlib\Sdl_string.c
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\Symbian\UIQ3\Esdl_uiq3.mmp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\Video\symbian\sdl_epocvideo_uiq3.inl
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Virtualpathptr.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\machine\Types.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Apmstd.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikdef.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32ktran.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qiklayoutmanager.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikdef.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coefont.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Babitflags.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_wave.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coeaui.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\ecom\Ecom.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qiktoolbar.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mda\Common\Port.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikbctrl.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Bamdesca.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Txtfmstm.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\Stdarg.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\symbian\Sdl_symbianaudio.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_rwops.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\Stdio.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_syswm.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Fntstore.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikfctry.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coelayoutman.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Ecom\Ecomerrorcodes.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\symbian\Sdl_epocvideo.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_events.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32des16.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Frmparam.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_cpuinfo.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikcategory.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Rightsinfo.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Tagma.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Fldbltin.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\Sdl_error_c.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmcaf.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfutilities.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mda\Common\Port.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32keys.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Txtstyle.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\symbian\Sdl_epocevents_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\server\Mmfdatasource.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_audio.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32def.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\F32file.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Bitdev.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_audiomem.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32capability.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_sysaudio.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_platform.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Close_code.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\Sdl_fatal.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Agent.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikenv.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Bitbase.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Basched.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Data.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_cursor_c.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Metadata.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Uikon.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32mem.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\thread\Sdl_systhread.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Virtualpath.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32base.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Content.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Ecom\Implementationinformation.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32err.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfbase.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Baerrhan.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coeinput.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_config.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Attributeset.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32strm.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_leaks.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikprogi.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32hal.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Quiconfigclient.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfbase.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32buf.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32debug.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32buf.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Fldbase.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikon.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Biditext.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mda\Common\Audiostream.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Barsc.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32lmsg.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Gulftflg.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfvideo.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikviewfurniture.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mda\Common\Base.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikappui.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfcontroller.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\timer\Sdl_systimer.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\F32file.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coecntrl.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\machine\Ieeefp.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_video.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Ecom\Ecom.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Fbsmessage.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfcontrollerpluginresolver.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32cmn.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\epoc32\include\variant\Symbian_os_v9.1.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Txtetext.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Txtstyle.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\Ctype.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikdocument.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\ecom\Ecom.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Embeddedobject.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32std.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\_ansi.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\Symbian\Sdlapp.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mdaaudiooutputstream.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Gulcolor.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32share.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Importfile.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Streamableptrarray.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32const.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikamnt.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikappui.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eiklibry.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\events\Sdl_sysevents.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Lafmain.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Begin_code.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Metadataarray.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_mixer_mmx.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikcommandmanager.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\Symbian\Ebasicapp.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Bitstd.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\sys\_types.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\Math.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_yuv_sw_c.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\String.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mmfplugininterfaceuids.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32stor.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Ecom\Implementationinformation.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Txtfmlyr.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikbtgrp.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Fbs.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_mixer_m68k.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32strm.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfcontrollerframework.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coecontrolarray.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Caf.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Gdi.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\Stddef.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32mem.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mda\Common\Audio.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mmf\Common\Mmfutilities.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikuiconfigdatatypes.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfutilities.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\W32std.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikviewswitcher.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_loadso.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_blit.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qiklayoutvalues.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Babitflags.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Supplier.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\Symbian\Ebasicapp.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_timer.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Supplieroutputfile.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\symbian\Sdl_epocvideo_vga.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Apacmdln.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Gulbordr.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Manager.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Rightsmanager.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\Stdlib.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikcmobs.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\F32file.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Txtfrmat.inl
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_sysvideo.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mmfclntutility.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Cafmimeheader.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikcolor.hrh
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_cdrom.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikmobs.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfaudio.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Bitdev.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32file.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_mixer_mmx_vc.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Attribute.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Ecom\Ecomresolverparams.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32notif.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mm\Mmcaf.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfutilities.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mda\common\Audio.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mda\Common\Resource.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Partitions.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\D32locd.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32svr.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Frmvis.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfipc.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32share.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikcommand.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikcontrolprovider.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikflowlayoutmanager.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\Reent.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfcontrollerframeworkbase.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Savenotf.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Badesca.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coedef.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Openfont.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\audio\Sdl_audio_c.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Bidi.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32cmn.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Frmlaydt.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\timer\Sdl_timer_c.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikfactories.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\thread\Sdl_thread_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_main.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Default_cursor.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32page.inl
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\Symbian\Inifile.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mda\Common\Resource.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mda\client\Utility.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coetextdrawer.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Vwsdef.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32std.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfipc.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikstockcontrols.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32base.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32std.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_error.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\server\Mmfbuffer.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Frmtlay.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_stretch_c.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Apadef.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Apgwgnam.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Dirstreamable.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_keyboard.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_endian.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_quit.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\server\Mmfdatasink.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\server\Mmfbuffer.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_stdinc.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\epoc32\include\variant\Uiq_3.0.hrh
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_mutex.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikon.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Linebreak.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32des8.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32event.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikviewbase.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_yuvfuncs.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Gulalign.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikcontainer.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\sys\Types.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmfstandardcustomcommands.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Bitmap.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Apaid.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\Symbian\Sdlapp.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Caftypes.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32base.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Guldef.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_rleaccel_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_mouse.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\sys\Stdio_t.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\sys\Unistd.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Caferr.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coemop.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Fldset.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Txtetext.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Graphicsaccelerator.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\Unistd.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Apparc.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\E32ldr.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_keysym.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Quartz.mbg
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\joystick\Sdl_joystick_c.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_joystick.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Fldinfo.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mda\common\Base.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\sys\Reent.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Cafpanic.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikon.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32page.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\symbian\Sdl_epocvideo_uiq3.inl
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_audio.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Apaflrec.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\D32locd.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32std.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_version.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\events\Sdl_events_c.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mda\Common\Controller.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Gdi.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32stor.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\server\Mmfdatabuffer.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Txtfmlyr.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coemain.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Ecom\Ecomresolverparams.inl
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\Stdarg_e.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\S32file.inl
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\cdrom\Sdl_syscdrom.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikcommand.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\libc\Time.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Gulutil.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coecobs.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_main.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Txtfrmat.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Devicekeys.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Stringattributeset.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikapplication.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\thread\symbian\Sdl_systhread_c.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Barsread.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\caf\Streamableptrarray.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikdgfty.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\video\Sdl_pixels_c.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikapp.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coehelp.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\common\Mmffourcc.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_thread.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mda\Common\Base.inl
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\src\joystick\Sdl_sysjoystick.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikvcurs.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikaufty.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mda\Common\Base.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_config_symbian.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Bautils.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Qikcategorymodel.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Coeview.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\mmf\server\Mmfdatasourcesink.hrh
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Eikdoc.h
# End Source File
# Begin Source File

SOURCE=\SDL-1.2.13\include\Sdl_active.h
# End Source File
# Begin Source File

SOURCE=\UIQ3\EPOC32\include\Mmf\Common\Mmfbase.h
# End Source File
# End Group
# Begin Group "Make Files"

# PROP Default_Filter "mak;mk"
# Begin Source File

SOURCE=\sdl-1.2.13\symbian\uiq3\esdl_uiq3.mak
# End Source File
# End Group
# End Target
# End Project
