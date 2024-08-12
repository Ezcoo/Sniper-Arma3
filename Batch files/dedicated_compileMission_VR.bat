@echo off

title Build Peak missions from source

set "dedicatedserverpath=C:\Program Files (x86)\Steam\steamapps\common\Arma 3\MPMissions"
set "destinationpath=C:\Users\Dev\Documents\Arma 3 - Other Profiles\Ezcoo\mpmissions"

set "missionname=Sniper"
set "mapname=VR"

set "missionfolder=%missionname%.%mapname%"

echo --- Mission will be prepared at: "%dedicatedserverpath%\%missionfolder%"

echo -- Copying common files to repository folder...

echo - Copying common functions...

xcopy "%destinationpath%\%missionfolder%\functions" "%dedicatedserverpath%\%missionfolder%\functions" /E /S /Y /I

echo - Copying common resources (Rsc)...

xcopy "%destinationpath%\%missionfolder%\rsc\common" "%dedicatedserverpath%\%missionfolder%\rsc\common" /E /S /Y /I

echo - Copying common init files...

xcopy "%destinationpath%\%missionfolder%\initPlayerLocal.sqf" "%dedicatedserverpath%\%missionfolder%\initPlayerLocal.sqf" /Y /-I

xcopy "%destinationpath%\%missionfolder%\initPlayerServer.sqf" "%dedicatedserverpath%\%missionfolder%\initPlayerServer.sqf" /Y /-I

xcopy "%destinationpath%\%missionfolder%\initServer.sqf" "%dedicatedserverpath%\%missionfolder%\initServer.sqf" /Y /-I

xcopy "%destinationpath%\%missionfolder%\init.sqf" "%dedicatedserverpath%\%missionfolder%\init.sqf" /Y /-I

echo - Copying map specific resources (Rsc) for map %mapname%...

xcopy "%destinationpath%\%missionname%.%mapname%\rsc\mapSpecific" "%dedicatedserverpath%\%missionfolder%\rsc\mapSpecific" /E /S /Y /I

echo - Copying mission (SQM) file for map %mapname%...

xcopy "%destinationpath%\%missionfolder%\mission.sqm" "%dedicatedserverpath%\%missionfolder%\mission.sqm" /Y /-I

echo - Copying description.ext for map %mapname%...

xcopy "%destinationpath%\%missionfolder%\description.ext" "%dedicatedserverpath%\%missionfolder%\description.ext" /Y /-I

echo - Copying mission.sqm...

xcopy "%sourcepath%\%missionname%.%mapname%\mission.sqm" "%dedicatedserverpath%\%missionfolder%\mission.sqm" /Y /-I