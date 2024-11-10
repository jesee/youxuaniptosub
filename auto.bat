@echo off

REM Step 1: 运行cftest命令
.\cftest.exe -f ip.txt -n 1000 -dn 10 -tl 300 -sl 5

REM Step 2: 运行git命令
git add .
git commit -m "%date% %time%"
git push

REM 等待用户按下任意键
echo.
echo 按下任意键继续，或按 Ctrl+C 退出...
pause >nul