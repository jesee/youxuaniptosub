@echo off

REM 使用VBS脚本后台启动v2ray
wscript.exe .\run-v2ray.vbs ".\v2ray\v2ray.exe" "-c" ".\config.json"

REM 设置系统代理
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d "http://127.0.0.1:7890" /f

echo start proxy secessfully!!
timeout /t 5