@ECHO OFF
TITLE Waynes Repair Kit

REM Set screen buffer size and window size
mode con: cols=170 lines=30

:MENU
CLS
for /F %%i in ("2 A B") do (
    color 1%%i
    timeout /t 1 >nul
)	
ECHO(
echo   __        __
echo   \ \      / /
echo    \ \ /\ / /
echo     \ V  V /
ECHO      \_/\_/
ECHO(
ECHO(
ECHO(
ECHO Select a command to execute:
ECHO(


ECHO 1. Run System File Checker - It scans the system files for corruption and attempts to repair any detected issues automatically
ECHO 2. Run DISM CheckHealth - Used to repair and restore the integrity of the system image and component store. DISM stands for Deployment Image Servicing and Management
ECHO 3. Run DISM ScanHealth - Used to repair and restore the integrity of the system image and component store. DISM stands for Deployment Image Servicing and Management
ECHO 4. Run DISM RestoreHealth - Used to repair and restore the integrity of the system image and component store. DISM stands for Deployment Image Servicing and Management
ECHO 5. Release IP Address - Release the current IP address lease of a network interface
ECHO 6. Flush DNS Cache - Clearing the stored information about domain names and their corresponding IP addresses
ECHO 7. Renew IP Address - Renew the IP address of a network interface
ECHO 8. Reset Winsock Catalog - Restoring the networking configuration on a Windows system
ECHO 9. Reset IPv4 Settings - Restoring the default configuration of the IPv4 protocol on a system
ECHO 10. Reset IPv6 Settings - Restoring the default configuration of the IPv6 protocol on a system
ECHO 11. Verify System Files with System File Checker - verify the integrity of system files and repair any detected issues
ECHO 12. Run Check Disk - Fix errors such as bad sectors, file system corruption, and logical inconsistencies on the hard drive
ECHO.

SET /P "choice=Enter your choice: "

IF "%choice%"=="1" (
    ECHO Running sfc /scannow
    sfc /scannow
    PAUSE
    GOTO MENU
)

IF "%choice%"=="2" (
    ECHO Running DISM CheckHealth
    DISM /Online /Cleanup-Image /CheckHealth
    PAUSE
    GOTO MENU
)

IF "%choice%"=="3" (
    ECHO Running DISM ScanHealth
    DISM /Online /Cleanup-Image /ScanHealth
    PAUSE
    GOTO MENU
)

IF "%choice%"=="4" (
    ECHO Running DISM RestoreHealth
    DISM /Online /Cleanup-Image /RestoreHealth /Source:repairSource\install.wim
    PAUSE
    GOTO MENU
)

IF "%choice%"=="5" (
    ECHO Releasing IP Address
    ipconfig /release
    PAUSE
    GOTO MENU
)

IF "%choice%"=="6" (
    ECHO Flushing DNS Cache
    ipconfig /flushdns
    PAUSE
    GOTO MENU
)

IF "%choice%"=="7" (
    ECHO Renewing IP Address
    ipconfig /renew
    PAUSE
    GOTO MENU
)

IF "%choice%"=="8" (
    ECHO Resetting Winsock Catalog
    netsh winsock reset
    PAUSE
    GOTO MENU
)

IF "%choice%"=="9" (
    ECHO Resetting IPv4 Settings
    netsh interface ipv4 reset
    PAUSE
    GOTO MENU
)

IF "%choice%"=="10" (
    ECHO Resetting IPv6 Settings
    netsh interface ipv6 reset
    PAUSE
    GOTO MENU
)

IF "%choice%"=="11" (
    ECHO Verifying System Files with sfc
    sfc /verifyonly
    PAUSE
    GOTO MENU
)

IF "%choice%"=="12" (
    ECHO Running Check Disk (chkdsk)
    CHKDSK /F /R /X
    PAUSE
    GOTO MENU
)

GOTO MENU
