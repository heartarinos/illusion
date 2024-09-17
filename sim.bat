@echo off
title Simulation
color 0A
cls

:: Function to simulate typing with a delay
:simulate_typing
set "text=%~1"
setlocal EnableDelayedExpansion
set "len=0"
for /l %%A in (1,1,255) do if not "!text:~%%A,1!"=="" set /a len=%%A
for /l %%A in (1,1,%len%) do (
    set "char=!text:~%%A,1!"
    echo|set /p=!char!
    timeout /t 0.05 >nul
)
endlocal
goto :eof

:: Display the fake "hacking" intro
:show_intro
cls
call :simulate_typing "Starting hacking simulation..."
timeout /t 2 >nul
cls
call :simulate_typing "Initializing connection..."
timeout /t 2 >nul
cls
call :simulate_typing "Connecting to target..."
timeout /t 3 >nul
cls
call :simulate_typing "Bypassing firewall..."
timeout /t 2 >nul
cls
call :simulate_typing "Scanning network..."
timeout /t 3 >nul
cls
call :simulate_typing "Target found: 192.168.1.1"
timeout /t 2 >nul
cls

:: Simulate a series of fake commands
:show_commands
call :simulate_typing ">> ping 192.168.1.1 -t"
timeout /t 2 >nul
cls
call :simulate_typing "Pinging 192.168.1.1 with 32 bytes of data:"
timeout /t 2 >nul
cls
call :simulate_typing "Reply from 192.168.1.1: bytes=32 time=12ms TTL=128"
timeout /t 1 >nul
cls
call :simulate_typing "Reply from 192.168.1.1: bytes=32 time=11ms TTL=128"
timeout /t 1 >nul
cls
call :simulate_typing "Reply from 192.168.1.1: bytes=32 time=10ms TTL=128"
timeout /t 1 >nul
cls
call :simulate_typing "Reply from 192.168.1.1: bytes=32 time=9ms TTL=128"
timeout /t 1 >nul
cls

:: Simulate more fake commands
call :simulate_typing ">> tracert 192.168.1.1"
timeout /t 2 >nul
cls
call :simulate_typing "Tracing route to 192.168.1.1 over a maximum of 30 hops:"
timeout /t 2 >nul
cls
call :simulate_typing "  1    <1 ms    <1 ms    <1 ms  router.local [192.168.1.1]"
timeout /t 1 >nul
cls
call :simulate_typing "Trace complete."
timeout /t 2 >nul
cls

:: Display fake system commands
call :simulate_typing ">> netstat -an"
timeout /t 2 >nul
cls
call :simulate_typing "Active Connections"
timeout /t 2 >nul
cls
call :simulate_typing "  Proto  Local Address          Foreign Address        State"
timeout /t 2 >nul
cls
call :simulate_typing "  TCP    192.168.1.1:139        192.168.1.2:12345      ESTABLISHED"
timeout /t 2 >nul
cls
call :simulate_typing "  TCP    192.168.1.1:445        192.168.1.3:54321      LISTENING"
timeout /t 2 >nul
cls

:: Show final message
call :simulate_typing "Hacking simulation complete."
timeout /t 2 >nul
cls
call :simulate_typing "Press any key to exit..."
pause >nul
exit
