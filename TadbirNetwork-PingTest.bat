@echo off
title TadbirNetwork Ping Monitor

:: Set blue color
color 1F

echo ===============================================
echo   TadbirNetwork (Network, Software, Hardware)
echo   09135289377 (Mohandes Ziaei)
echo ===============================================
echo.

set IP1=8.8.8.8
set IP2=4.2.2.4

:START
echo Checking %IP1% ...
ping -n 1 %IP1% >nul

if errorlevel 1 (
    echo Timeout or Connection Lost to %IP1%
    echo Switching to %IP2%
    echo.
    goto PING2
) else (
    goto PING1
)

:PING1
echo Ping Started on %IP1% ...
ping %IP1%
echo.
goto START

:PING2
echo Ping Started on %IP2% ...
ping %IP2%
echo.
goto START

