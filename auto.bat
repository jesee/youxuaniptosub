@echo off

REM Step 1: 运行cftest命令
.\cftest.exe -f ip.txt -n 800 -dn 10 -tl 300 -sl 10 -url https://urltest.flight.us.kg/

REM Step 2: 运行git命令
git add .
git commit -m "%date% %time%"
git push

REM 等待用户按下任意键
echo.
echo press any key to continue, or press Ctrl+C to exit ...
pause >nul