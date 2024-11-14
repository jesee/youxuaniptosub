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

echo  wait to create sub link......

for /f "delims=" %%i in (result.txt) do set RESULT=%%i

if "%RESULT%"=="" (
    echo error : result.txt empty
    pause >nul
)

set URL=https://vless.ucheck.us.kg/api/kv/insert
rem set DATA={"key":"%UUID%", "value":"%RESULT%"}
set DATA={"\"key\"":"\"%UUID%\"","\"value\"":"\"%RESULT%\""}

curl -X POST -H "Content-Type: application/json" -d "%DATA%" %URL%
if %errorlevel% neq 0 (
    echo error : request failed
    pause >nul
)

echo  success!!!
echo you sub link is :  https://vless.ucheck.us.kg/api/getkv?key=%UUID%
echo.
echo press any key to continue, or press Ctrl+C to exit ...
pause >nul

