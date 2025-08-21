@echo off
if not exist "version.txt" (
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/version.txt
set /p tag=<"version.txt"
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/IWannaStartARace.exe
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/data.win
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/readme.txt
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/options.ini
)
if exist "version.txt" (
rename "version.txt" "version_old.txt"
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/version.txt
fc "version_old.txt" "version.txt" >nul
if errorlevel 1 (
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/IWannaStartARace.exe
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/data.win
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/readme.txt
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/options.ini
)
del "version_old.txt"
)
start "SAR" "IWannaStartARace.exe"