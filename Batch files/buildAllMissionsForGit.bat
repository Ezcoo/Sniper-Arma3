call compileMission_ALL.bat

title Build Peak missions from source for Git

set "repopath=C:\Users\Dev\Documents\Sniper-Arma3"
set "destinationpath=C:\Users\Dev\Documents\Arma 3 - Other Profiles\Ezcoo\mpmissions"

set "missionname=Sniper"

set "mapname=VR"

echo ***
echo -- Deleting previous/deprecated files in the repository folder for map %mapname%...
echo ***

rmdir /S /Q "%repopath%\%missionname%.%mapname%"

echo Building mission for map %mapname%...

xcopy "%destinationpath%\%missionname%.%mapname%" "%repopath%\%missionname%.%mapname%" /E /S /Y /I

echo Building mission for map %mapname% finished.

set "mapname=Tanoa"

echo ***
echo -- Deleting previous/deprecated files in the repository folder for map %mapname%...
echo ***

rmdir /S /Q "%repopath%\%missionname%.%mapname%"

echo Building mission for map %mapname%...

xcopy "%destinationpath%\%missionname%.%mapname%" "%repopath%\%missionname%.%mapname%" /E /S /Y /I

echo Building mission for map %mapname% finished.