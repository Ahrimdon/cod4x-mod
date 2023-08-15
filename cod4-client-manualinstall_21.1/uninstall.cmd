@echo off

if not exist ..\iw3mp.exe (
    if not exist ..\..\iw3mp.exe (
	echo Error: Updatefolder not placed into cod4 directory
        pause    	
        exit /B -1
    ) else (
    	set updir=..\..\
    )
) else (
   set updir=..\
)

copy miles32.dll %updir%\mss32.dll
echo Done!
pause
