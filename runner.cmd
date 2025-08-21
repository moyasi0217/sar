@echo off
if not exist "version.txt" (
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/i%%20wanna%%20start%%20a%%20race/version.txt
set /p tag=<"version.txt"
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/i%%20wanna%%20start%%20a%%20race/IWannaStartARace.exe
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/i%%20wanna%%20start%%20a%%20race/data.win
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/i%%20wanna%%20start%%20a%%20race/readme.txt
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/i%%20wanna%%20start%%20a%%20race/options.ini
)
if exist "version.txt" (
rename "version.txt" "version_old.txt"
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/i%%20wanna%%20start%%20a%%20race/version.txt
fc "version_old.txt" "version.txt" >nul
if errorlevel 1 (
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/i%%20wanna%%20start%%20a%%20race/IWannaStartARace.exe
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/i%%20wanna%%20start%%20a%%20race/data.win
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/i%%20wanna%%20start%%20a%%20race/readme.txt
curl -O https://raw.githubusercontent.com/moyasi0217/sar/refs/heads/main/i%%20wanna%%20start%%20a%%20race/options.ini
)
del "version_old.txt"
)
start "SAR" "IWannaStartARace.exe"