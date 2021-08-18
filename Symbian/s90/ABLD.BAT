@ECHO OFF

REM Bldmake-generated batch file - ABLD.BAT
REM ** DO NOT EDIT **

setlocal
@SET BLDINFPATH=\SDL-1.2.13\SYMBIAN\S90\
perl -S ABLD.PL "\SDL-1.2.13\SYMBIAN\S90\\" %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel==1 goto CheckPerl
goto End

:CheckPerl
perl -v >NUL
if errorlevel==1 echo Is Perl, version 5.003_07 or later, installed?
goto End

:End
endlocal
