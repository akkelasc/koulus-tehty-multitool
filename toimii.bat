@echo off
title Koulus tehtymultitool
:menu

cls
echo ============================================
echo.            Koulus tehty multi tool       
echo ============================================
echo 1. Checkaa ulkone ip
echo 2. Checkaa sisane ip
echo 3. pingaa nettisivu
echo 4. DNS Lookup
echo 5. System Infot
echo 6. Poistu
echo.
set /p choice="Choose an option (1-6): "

if "%choice%"=="1" goto external_ip
if "%choice%"=="2" goto internal_ip
if "%choice%"=="3" goto ping_tool
if "%choice%"=="4" goto dns_lookup
if "%choice%"=="5" goto system_info
if "%choice%"=="6" exit

:external_ip
cls
echo Checking External IP Address...
curl ifconfig.me
echo.
pause
goto menu

:internal_ip
cls
echo Your Internal IP Address is:
ipconfig | findstr /i "IPv4"
echo.
pause
goto menu

:ping_tool
cls
set /p address="Enter a website or IP address to ping: "
ping %address%
echo.
pause
goto menu

:dns_lookup
cls
set /p domain="Enter a domain for DNS lookup: "
nslookup %domain%
echo.
pause
goto menu

:system_info
cls
echo System Information:
systeminfo
echo.
pause
goto menu
