
PATH=E:\ecompxl\bin;\s60v2\epoc32\tools\;\s60v2\epoc32\gcc\bin\;C:\windows\system32;C:\windows;C:\windows\System32\Wbem;C:\Program Files\ATI Technologies\ATI Control Panel;C:\Program Files\Common Files\Adaptec Shared\System;C:\Perl\bin;\s60v2\epoc32\tools;c:\MSVC6\VC98\Bin;e:\s60v2\epoc32\tools\nokia_compiler\Symbian_Tools\Command_Line_Tools;C:\Program Files\CSL Arm Toolchain\arm-none-symbianelf\bin;C:\Program Files\CSL Arm Toolchain\bin;E:\s60v2\epoc32\gcc\lib\gcc-lib\arm-epoc-pe\2.95.3-psion-98r2

# EPOC DEFINITIONS

EPOCBLD = \s60v2\EPOC32\BUILD\SDL-1.2.13\SYMBIAN\S60V2\ESDL_S60\WINS\ #
EPOCTRG = \s60v2\EPOC32\RELEASE\WINS\ #
EPOCLIB = \s60v2\EPOC32\RELEASE\WINS\ #
EPOCLINK = \s60v2\EPOC32\RELEASE\WINS\ #
EPOCSTATLINK = \s60v2\EPOC32\RELEASE\WINS\ #


RECREATEWORKSPACE :
	cd \SDL-1.2.13\SYMBIAN\S60V2
	perl -S makmake.pl -D \SDL-1.2.13\SYMBIAN\S60V2\ESDL_S60.MMP VC6

