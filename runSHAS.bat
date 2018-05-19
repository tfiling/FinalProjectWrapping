@echo off
CD SHAS
start "SHAS" java -jar ..\start.jar
timeout 10
start http://localhost:8888/SHAS/
:loop
echo.
echo *************************************************************
echo ****                   Welcome to SHAS                   ****
echo *************************************************************
echo.
echo Please Insert a command
echo kill - will terminate the simulator
echo open - will open the default web browser with the SHAS local url
echo. 
set /p command=""
echo.
if %command% == kill goto killApp
if %command% == open goto openBrowser
goto loop


:openBrowser
start http://localhost:8888/SHAS/
goto loop

:killApp
taskkill /F /FI "WindowTitle eq SHAS" /T