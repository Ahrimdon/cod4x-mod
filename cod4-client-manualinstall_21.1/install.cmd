@echo off
set version=cod4x_021

set basedir="%LOCALAPPDATA%"\CallofDuty4MW

if not exist %basedir% (
    mkdir %basedir%
)

set maindir=%basedir%\main
set zonedir=%basedir%\zone

if not exist %maindir% (
    mkdir %maindir%
)

if not exist %zonedir% (
    mkdir %zonedir%
)

set bindir=%basedir%\bin

if not exist %bindir% (
    mkdir %bindir%
)

set bindir=%bindir%\%version%

if not exist %bindir% (
    mkdir %bindir%
)

cd %~dp0

if not exist ..\iw3mp.exe (
    if not exist ..\..\iw3mp.exe (
    	if not exist ..\..\..\iw3mp.exe (
    	   if not exist .\iw3mp.exe (
	     	echo Error: Updatefolder not placed into cod4 directory
	     	pause    	
             	exit /B -1
    	   ) else (
    		set updir=.
    	   )
    	) else (
    		set updir=..\..\..
    	)
    ) else (
    	set updir=..\..
    )
) else (
   set updir=..
)



copy miles32.dll %updir%\miles32.dll
copy mss32.dll %updir%\mss32.dll
copy launcher.dll %bindir%\..\launcher.dll
copy crashrpt_lang.ini %bindir%\crashrpt_lang.ini
copy crashrpt1403.dll %bindir%\crashrpt1403.dll
copy crashsender1403.exe %bindir%\crashsender1403.exe
copy dbghelp.dll %bindir%\dbghelp.dll
copy msvcp100.dll %bindir%\msvcp100.dll
copy msvcr100.dll %bindir%\msvcr100.dll
copy %version%.dll %bindir%\%version%.dll
copy jcod4x_00.iwd %maindir%\jcod4x_00.iwd
copy cod4x_patchv2.ff %zonedir%\cod4x_patchv2.ff
echo Done!
pause
