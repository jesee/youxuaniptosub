@echo off

REM 终止v2ray进程
taskkill /f /im v2ray.exe

REM 关闭系统代理
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /f

echo stop proxy secessfully!!
timeout /t 5