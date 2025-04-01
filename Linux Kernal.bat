@echo off
color a
Title Linux Terminal 

:: Set UTF-8 encoding
chcp 65001 >nul

:: Display welcome art
echo ##       #### ##    ## ##     ## ##     ##      
echo ##        ##  ###   ## ##     ##  ##   ## 
echo ##        ##  ####  ## ##     ##   ## ##  
echo ##        ##  ## ## ## ##     ##    ###   
echo ##        ##  ##  #### ##     ##   ## ##  
echo ##        ##  ##   ### ##     ##  ##   ##
echo ######## #### ##    ##  #######  ##     ##
echo     
echo                  .88888888:.
echo                 88888888.88888.
echo               .8888888888888888.
echo               888888888888888888
echo              88' _`88'_  `88888
echo               88 88 88 88  88888
echo               88_88_::_88_:88888
echo               88:::,::,:::::8888
echo               88`:::::::::'`8888
echo              .88  `::::'    8:88.
echo             8888            `8:888.
echo           .8888'             `888888.
echo          .8888:..  .::.  ...:'8888888:.
echo         .8888.'     :'     `'::`88:88888
echo        .8888        '         `.888:8888.
echo       888:8         .           888:88888
echo     .888:88        .:           888:88888:
echo     8888888.       ::           88:888888
echo     `.::.888.      ::          .88888888
echo    .::::::.888.    ::         :::`8888'.:.
echo   ::::::::::.888   '         .::::::::::::
echo  ::::::::::::.8    '      .:8::::::::::::.
echo  .::::::::::::::.        .:888:::::::::::::
echo  :::::::::::::::88:.__..:88888:::::::::::'
echo   `'.:::::::::::88888888888.88:::::::::'
echo     `':::_:' -- '' -'-' `':_::::'`
echo 
echo Tux, the Linux Penguin, welcomes you!
pause
echo Welcome to the Linux Terminal!
pause >nul

:: Main loop
:a
color 6
cls
echo                 .:-==========-:.                 
echo             .-====================-:             
echo         .-==========================-.          
echo        :=====================-    -=====:        
echo       ======================-      :======       
echo     .=============:.        -      -=======:     
echo    .==========-..-           :.   -=========:    
echo    .==========:    -.              .==========.   
echo    =========-      .=========-       -=========   
echo   :========-      -============-      -========:  
echo   ======--=.     -==============-     .=========  
echo  .====     .:   -================-     -========. 
echo  .===.      .   ================================. 
echo  .====     .:   ==================     -========. 
echo   ======--=.     ================     .=========  
echo  :========-      -============-      -========-  
echo    =========-      .=========-       -=========   
echo    .==========.    -.              .==========.   
echo     :==========-..-.          :.   -=========:    
echo      :============-:.        -      -=======:     
echo        =================--===-      :======.      
echo         :=====================-    -=====:        
echo           .-==========================-.          
echo              :-====================-:             
pause
set /p command="kali@localhost:$ "

:: Process CMDS (Linux-like commands)
if /i "%command%"=="ls" (
    echo Directory listing:
    dir /b
    pause >nul
    goto a
)

if /i "%command%"=="pwd" (
    echo Current directory:
    cd
    pause >nul
    goto a
)

if /i "%command%"=="cd" (
    echo Enter the directory path:
    set /p dirpath="Path: "
    cd "%dirpath%"
    if errorlevel 1 (
        echo Failed to change directory.
    ) else (
        echo Changed directory to %cd%.
    )
    pause >nul
    goto a
)

if /i "%command%"=="mkdir" (
    echo Enter the name of the directory to create:
    set /p dirname="Directory Name: "
    mkdir "%dirname%"
    if errorlevel 1 (
        echo Failed to create directory.
    ) else (
        echo Directory created successfully.
    )
    pause >nul
    goto a
)

if /i "%command%"=="rmdir" (
    echo Enter the name of the directory to remove:
    set /p dirname="Directory Name: "
    rmdir "%dirname%"
    if errorlevel 1 (
        echo Failed to remove directory. Make sure it's empty.
    ) else (
        echo Directory removed successfully.
    )
    pause >nul
    goto a
)

if /i "%command%"=="rm" (
    echo Enter the name of the file or folder to delete:
    set /p filename="File/Folder Name: "
    del /f /q "%filename%"
    if errorlevel 1 (
        echo Failed to delete file or folder.
    ) else (
        echo File/Folder deleted successfully.
    )
    pause >nul
    goto a
)

if /i "%command%"=="cp" (
    echo Enter source file and target path:
    set /p source="Source File: "
    set /p target="Target Path: "
    copy "%source%" "%target%"
    if errorlevel 1 (
        echo Failed to copy file.
    ) else (
        echo File copied successfully.
    )
    pause >nul
    goto a
)

if /i "%command%"=="mv" (
    echo Enter source file and target path:
    set /p source="Source File: "
    set /p target="Target Path: "
    move "%source%" "%target%"
    if errorlevel 1 (
        echo Failed to move file.
    ) else (
        echo File moved successfully.
    )
    pause >nul
    goto a
)

if /i "%command%"=="touch" (
    echo Enter the name of the file to create:
    set /p filename="File Name: "
    type nul > "%filename%"
    if errorlevel 1 (
        echo Failed to create file.
    ) else (
        echo File created successfully.
    )
    pause >nul
    goto a
)

if /i "%command%"=="file" (
   echo Enter the name of the file to check its type:
   set /p filename="File Name: "
   if exist "%filename%" (
       echo The file exists. Windows does not natively provide detailed type information.
   ) else (
       echo File not found!
   )
   pause >nul
   goto a
)

if /i "%command%"=="exit" (
   echo Exiting terminal emulator...
   pause >nul
   exit
)

if "%command%"=="" (
   goto a
)

:: Command not found message for unrecognized input
echo Command not found: %command%
pause >nul
goto a

if "%command%"=="help" goto x

:x
cls
color a
echo cd:Change Directory
echo mkdir:Create a new direcotory
echo rmdir: Remove empty directory
echo rm: Delete files or folders
echo cp : Copy files from one location to another
echo mv : Move files
echo touch : Create empty file
echo file: Check if file exists
pause 
goto a
