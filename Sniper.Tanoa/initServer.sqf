private _mapSize = worldSize;
private _maxRadius = _mapSize / 2;
private _mapCenter = [_maxRadius, _maxRadius];

private _centerOfPlayableArea = [random _mapSize, random _mapSize];

while {surfaceIsWater _centerOfPlayableArea} do {
    _centerOfPlayableArea = [random _mapSize, random _mapSize];
};

CENTER_OF_PLAYABLE_AREA = _centerOfPlayableArea;

publicVariable "CENTER_OF_PLAYABLE_AREA";

[] spawn sniper_fnc_monitorPlayableAreaSize;

sleep 1;

[] spawn sniper_fnc_monitorPlayersSafezone;

addMissionEventHandler ["PlayerConnected", {
	diag_log "Client connected";
    diag_log _this;
}];


// TODO: Move spawning logic in its own function
// _playableAreaCenter = [_centerOfPlayableArea, 0, _maxRadius, 2, ] call BIS_fnc_findSafePos;