@echo off

REM Step 1: 检查uuid.txt是否存在且有内容
if not exist "uuid.txt" (
    echo error：uuid.txt file is not exist, Please rename bak.uuid.txt to uuid.txt
    pause >nul
)
set /p UUID=<uuid.txt
if "%UUID%"=="" (
    echo error：uuid.txt file is empty
    pause >nul
)


REM Step 1: 运行cftest命令测速
.\cftest.exe -f ip.txt -n 1000 -dn 10 -tl 300 -sl 1 -url https://urltest.flight.us.kg/

REM Step 2: 检查result.txt是否存在且有内容
if not exist "result.txt" (
    echo error : result.txt file is not exist
    pause >nul
)

REM 读取result.txt内容
for /f "delims=" %%i in (result.txt) do set RESULT=%%i


REM 检查RESULT是否为空
if "%RESULT%"=="" (
    echo error：result.txt empty
    pause >nul
)


REM Step 3: 提交POST请求
set URL=https://vless.ucheck.us.kg/api/kv/insert
rem set DATA={"key":"%UUID%", "value":"%RESULT%"}
set DATA={"\"key\"":"\"%UUID%\"","\"value\"":"\"%RESULT%\""}


REM 使用curl提交请求
curl -X POST -H "Content-Type: application/json" -d "%DATA%" %URL%
if %errorlevel% neq 0 (
    echo error：request failed
    pause >nul
)

REM Step 4: 成功提示
echo commit success
echo you sub link is：https://vless.ucheck.us.kg/api/getkv?key=%UUID%



REM 等待用户按下任意键
echo.
echo press any key to continue, or press Ctrl+C to exit ...
pause >nul

