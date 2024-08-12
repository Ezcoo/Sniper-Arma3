@echo off

title Build Peak missions from source

set "dedicatedserverpath=C:\Program Files (x86)\Steam\steamapps\common\Arma 3\MPMissions"
set "sourcepath=C:\Users\Dev\Documents\Arma 3 - Other Profiles\Ezcoo\mpmissions"

set "missionname=Sniper"
set "mapname=Tanoa"

set "missionfolder=%missionname%.%mapname%"

echo --- Final mission files will be located at: "%dedicatedserverpath%\%missionfolder%"

echo -- Copying common files to repository folder...

echo - Copying common functions...

xcopy "%sourcepath%\%missionname%.VR\functions" "%dedicatedserverpath%\%missionfolder%\functions" /E /S /Y /I

echo - Copying common resources (Rsc)...

xcopy "%sourcepath%\%missionname%.VR\rsc\common" "%dedicatedserverpath%\%missionfolder%\rsc\common" /E /S /Y /I

echo - Copying common init files...

xcopy "%sourcepath%\%missionname%.VR\initPlayerLocal.sqf" "%dedicatedserverpath%\%missionfolder%\initPlayerLocal.sqf" /Y /-I

xcopy "%sourcepath%\%missionname%.VR\initPlayerServer.sqf" "%dedicatedserverpath%\%missionfolder%\initPlayerServer.sqf" /Y /-I

xcopy "%sourcepath%\%missionname%.VR\initServer.sqf" "%dedicatedserverpath%\%missionfolder%\initServer.sqf" /Y /-I

xcopy "%sourcepath%\%missionname%.VR\init.sqf" "%dedicatedserverpath%\%missionfolder%\init.sqf" /Y /-I

xcopy "%sourcepath%\%missionname%.VR\description.ext" "%dedicatedserverpath%\%missionfolder%\description.ext" /Y /-I

echo - Copying mission.sqm...

xcopy "%sourcepath%\%missionname%.%mapname%\mission.sqm" "%dedicatedserverpath%\%missionfolder%\mission.sqm" /Y /-I