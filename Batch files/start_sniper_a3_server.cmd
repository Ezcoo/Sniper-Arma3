::Made by eRazeri
@echo off
:start
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server_x64.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server_x64.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo Server monitored is not running, will be started now 
start "" /wait "C:\Program Files (x86)\Steam\steamapps\common\Arma 3\arma3server_x64.exe" -nosound -nosplash -nopause -config=cfg\server.cfg
echo Server started succesfully
goto started
:loop
cls
echo Server is already running, running monitoring loop
:started
C:\Windows\System32\timeout /t 10
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server_x64.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server_x64.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
goto start