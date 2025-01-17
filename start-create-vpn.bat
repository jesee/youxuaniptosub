@echo off

.\cftest.exe -f ip.txt -n 800 -dn 1 -tl 350 -sl 30

for /f "skip=1 tokens=1 delims=," %%a in (result.csv) do (
    set IP=%%a
)

del config.json
copy config-template.json config.json
powershell -Command "(Get-Content config.json) -replace 'replace-ip', '%IP%' | Set-Content config.json"

echo create successfully!!
timeout /t 5