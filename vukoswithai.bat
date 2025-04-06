@echo off
color a
Title Linux Terminal 

:: Set UTF-8 encoding
chcp 65001 >nul

:: Display welcome art
echo      _(,_/ \ \____________
echo      |`. \_@_@   `.     ,'
echo      |\ \ .        `-,-'
echo      || |  `-.____,-'
echo      || /  /
echo      |/ |  |
echo `..     /   \
echo   \\   /    |
echo   ||  |      \
echo    \\ /-.    |
echo    ||/  /_   |
echo hh \(_____)-'_)
echo Welcome to the VUKOS Operating System!
pause >nul

:: Initialize settings
set "current_color=a"
set "current_theme=default"

:: Main loop
:a
color %current_color%
cls
echo         _____
echo     .-,;='';_),-.
echo      \_\(),()/_/
echo        (,___,)
echo       ,-/`~`\-,___
echo      / /).:.('--._)
echo     {_[ (_,_)
echo         | Y |
echo snd    /  |  \
pause >nul

set /p command="VUKOS@localhost:$ "

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

if /i "%command%"=="chat" goto chatbot

if /i "%command%"=="settings" goto settings

if /i "%command%"=="help" (
   cls
   color a
   echo Available Commands:
   echo cd     : Change Directory  
   echo mkdir  : Create new directory  
   echo rmdir  : Remove empty directory  
   echo rm     : Delete files/folders  
   echo cp     : Copy files  
   echo mv     : Move files  
   echo touch  : Create empty file  
   echo file   : Check if file exists  
   echo chat   : Talk to the VUKOS chatbot
   echo settings: Change terminal settings
   pause 
   goto a 
)

if /i "%command%"=="exit" (
   echo Exiting terminal emulator...
   pause >nul
   exit
)

if "%command%"=="" goto a

:: Command not found message
echo Command not found: %command%
pause >nul
goto a

:: ==============================================
:: Chatbot Section
:: ==============================================
:chatbot
cls
color d
echo.
echo [Chatbot Activated] Type 'exit' to quit
echo ----------------------------------------
:chatloop
set /p user_input="You: "
if /i "%user_input%"=="exit" goto a

:: Basic AI Responses
set "response=Hmm... I don't have a good answer for that. Ask me about weather, time, or VUKOS!"

echo %user_input% | findstr /i "hello hi hey" >nul && set "response=Hello! How can I help you today?"
echo %user_input% | findstr /i "how are you" >nul && set "response=I'm just a bunch of code, but functioning well! You?"
echo %user_input% | findstr /i "time" >nul && set "response=Current time: %time%"
echo %user_input% | findstr /i "date" >nul && set "response=Today's date: %date%"
echo %user_input% | findstr /i "weather" >nul && set "response=Weather data unavailable. Imagine a perfect day!"
echo %user_input% | findstr /i "vukos" >nul && set "response=VUKOS is the coolest terminal emulator ever made!"
echo %user_input% | findstr /i "joke" >nul && set "response=Why don't programmers like nature? Too many bugs!"
echo %user_input% | findstr /i "thank" >nul && set "response=You're welcome! Always here to help."

:: Display response with typing effect
echo.
setlocal enabledelayedexpansion
for /l %%i in (0,1,500) do (set "prompt=!response:~0,%%i!" && cls && echo [Chatbot] !prompt!)
endlocal & echo [Chatbot] %response%
goto chatloop

:: ==============================================
:: Settings Section
:: ==============================================
:settings
cls
color a
echo [Settings Menu]
echo 1. Change Terminal Color
echo 2. Change Theme (ASCII Art)
echo 3. Reset to Default
echo 4. Back to Terminal
echo.
set /p choice="Enter your choice: "

if "%choice%"=="1" (
    echo Available Colors:
    echo 0 = Black
    echo 1 = Dark Blue
    echo 2 = Dark Green
    echo 3 = Dark Cyan
    echo 4 = Dark Red
    echo 5 = Dark Magenta
    echo 6 = Dark Yellow
    echo 7 = Light Gray
    echo 8 = Dark Gray
    echo 9 = Light Blue
    echo A = Light Green
    echo B = Light Cyan
    echo C = Light Red
    echo D = Light Magenta
    echo E = Light Yellow
    echo F = White
    set /p color_choice="Enter color code (e.g., A for Light Green): "
    set "current_color=%color_choice%"
    echo Color changed to %color_choice%.
    pause >nul
    goto settings
)

if "%choice%"=="2" (
    echo Available Themes:
    echo 1. Default (Current)
    echo 2. Minimalist
    echo 3. Space
    set /p theme_choice="Enter theme number: "
    if "%theme_choice%"=="2" (
        echo Minimalist theme selected.
        :: Add minimalist ASCII art here
        set "current_theme=minimalist"
        pause >nul
        goto settings
    )
    if "%theme_choice%"=="3" (
        echo Space theme selected.
        :: Add space-themed ASCII art here
        set "current_theme=space"
        pause >nul
        goto settings
    )
    echo Theme not changed.
    pause >nul
    goto settings
)

if "%choice%"=="3" (
    echo Resetting to default settings...
    set "current_color=a"
    set "current_theme=default"
    echo Default settings restored.
    pause >nul
    goto settings
)

if "%choice%"=="4" (
    goto a
)

echo Invalid choice. Please try again.
pause >nul
goto settings
