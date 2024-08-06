@echo off

title Build Peak missions from source

set "repopath=C:\Users\Dev\Documents\Sniper-Arma3"
set "destinationpath=C:\Users\Dev\Documents\Arma 3 - Other Profiles\Ezcoo\mpmissions"

set "missionname=Sniper"
set "mapname=VR"

set "missionfolder=%missionname%.%mapname%"

echo --- Mission will be prepared for Git at: "%repopath%\%missionfolder%"

echo ****************************************************************************
echo -- Deleting previous/deprecated files in the repository folder for map %mapname%...
echo ****************************************************************************

rmdir /S "%repopath%\%missionfolder%"

echo -- Copying common files to repository folder...

echo - Copying common functions...

xcopy "%destinationpath%\%missionfolder%\functions" "%repopath%\%missionfolder%\functions" /E /S /Y /I

echo - Copying common resources (Rsc)...

xcopy "%destinationpath%\%missionfolder%\rsc\common" "%repopath%\%missionfolder%\rsc\common" /E /S /Y /I

echo - Copying common init files...

xcopy "%destinationpath%\%missionfolder%\initPlayerLocal.sqf" "%repopath%\%missionfolder%\initPlayerLocal.sqf" /Y /-I

xcopy "%destinationpath%\%missionfolder%\initPlayerServer.sqf" "%repopath%\%missionfolder%\initPlayerServer.sqf" /Y /-I

xcopy "%destinationpath%\%missionfolder%\initServer.sqf" "%repopath%\%missionfolder%\initServer.sqf" /Y /-I

xcopy "%destinationpath%\%missionfolder%\init.sqf" "%repopath%\%missionfolder%\init.sqf" /Y /-I

echo - Copying map specific resources (Rsc) for map %mapname%...

xcopy "%destinationpath%\%missionname%.%mapname%\rsc\mapSpecific" "%repopath%\%missionfolder%\rsc\mapSpecific" /E /S /Y /I

echo - Copying mission (SQM) file for map %mapname%...

xcopy "%destinationpath%\%missionfolder%\mission.sqm" "%repopath%\%missionfolder%\mission.sqm" /Y /-I

echo - Copying description.ext for map %mapname%...

xcopy "%destinationpath%\%missionfolder%\description.ext" "%repopath%\%missionfolder%\description.ext" /Y /-I