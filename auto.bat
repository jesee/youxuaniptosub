@echo off
REM Step 1: 进入指定目录
cd /d D:\www\youxuanipresult

REM Step 2: 运行cftest命令
cftest -f ip.txt -n 1000 -dn 10 -tl 300 -sl 5

REM Step 3: 运行git命令
git add .
git commit -m "%date% %time%"
git push