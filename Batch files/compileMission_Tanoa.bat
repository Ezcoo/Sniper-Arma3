@echo off

title Build Peak missions from source

set "repopath=C:\Users\Dev\Documents\Sniper-Arma3"
set "destinationpath=C:\Users\Dev\Documents\Arma 3 - Other Profiles\Ezcoo\mpmissions"

set "missionname=Sniper"
set "mapname=Tanoa"

set "missionfolder=%missionname%.%mapname%"

echo --- Final mission files will be located at: "%repopath%\%missionfolder%"

echo ***
echo -- Deleting previous/deprecated files in the mission folder for map %mapname%...
echo ***

rmdir /S /Q "%destinationpath%\%missionname%.%mapname%\functions"
rmdir /S /Q "%destinationpath%\%missionname%.%mapname%\rsc\common"
rmdir /S /Q "%destinationpath%\%missionname%.%mapname%\initPlayerLocal.sqf"
rmdir /S /Q "%destinationpath%\%missionname%.%mapname%\initPlayerServer.sqf"
rmdir /S /Q "%destinationpath%\%missionname%.%mapname%\initServer.sqf"
rmdir /S /Q "%destinationpath%\%missionname%.%mapname%\init.sqf"
rmdir /S /Q "%destinationpath%\%missionname%.%mapname%\description.ext"

echo -- Copying common files to repository folder...

echo - Copying common functions...

xcopy "%destinationpath%\%missionname%.VR\functions" "%destinationpath%\%missionfolder%\functions" /E /S /Y /I

echo - Copying common resources (Rsc)...

xcopy "%destinationpath%\%missionname%.VR\rsc\common" "%destinationpath%\%missionfolder%\rsc\common" /E /S /Y /I

xcopy "%destinationpath%\%missionname%.VR\rsc\CfgSounds.hpp" "%destinationpath%\%missionfolder%\rsc\CfgSounds.hpp" /Y /-I

echo - Copying common init files...

xcopy "%destinationpath%\%missionname%.VR\initPlayerLocal.sqf" "%destinationpath%\%missionfolder%\initPlayerLocal.sqf" /Y /-I

xcopy "%destinationpath%\%missionname%.VR\initPlayerServer.sqf" "%destinationpath%\%missionfolder%\initPlayerServer.sqf" /Y /-I

xcopy "%destinationpath%\%missionname%.VR\initServer.sqf" "%destinationpath%\%missionfolder%\initServer.sqf" /Y /-I

xcopy "%destinationpath%\%missionname%.VR\init.sqf" "%destinationpath%\%missionfolder%\init.sqf" /Y /-I

xcopy "%destinationpath%\%missionname%.VR\description.ext" "%destinationpath%\%missionfolder%\description.ext" /Y /-I
