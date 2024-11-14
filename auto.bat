@echo off
setlocal enabledelayedexpansion

if not exist "uuid.txt" (
    REM 使用 PowerShell 生成 UUID 并写入 uuid.txt
    .\uuid.exe -f uuid.txt
) 

set /p UUID=<uuid.txt
if "%UUID%"=="" (
    .\uuid.exe > uuid.txt
)

echo your UUID is %UUID%
echo .
echo please turn off your vpn software
echo .

.\cftest.exe -f ip.txt -n 800 -dn 10 -tl 350 -sl 3

if not exist "result.txt" (
    echo error : result.txt file is not exist
    pause >nul
)

echo  success!!!
echo .
echo you sub link is :  https://vless.ucheck.us.kg/api/getkv?key=%UUID%
echo.
echo press any key to continue, or press Ctrl+C to exit ...
pause >nul

