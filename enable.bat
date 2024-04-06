@echo off

REM Set registry keys for Windows PowerShell to enable script execution
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell" /v "ExecutionPolicy" /t REG_SZ /d "Unrestricted" /f >nul 2>&1

REM Set registry keys for PowerShell Core to enable script execution
reg add "HKLM\SOFTWARE\Policies\Microsoft\PowerShellCore" /v "ExecutionPolicy" /t REG_SZ /d "Unrestricted" /f >nul 2>&1

REM Set __PSLockDownPolicy environment variable to 8
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "__PSLockDownPolicy" /t REG_SZ /d "8" /f >nul 2>&1
