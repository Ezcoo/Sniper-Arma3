private _mapSize = worldSize;
private _maxRadius = _mapSize / 2;
private _mapCenter = [_maxRadius, _maxRadius];

private _centerOfPlayableArea = [random _maxRadius, random _maxRadius];

while {surfaceIsWater _centerOfPlayableArea} do {
    _centerOfPlayableArea = [random _maxRadius, random _maxRadius];
};

// [_centerOfPlayableArea] call sniper_fnc_drawPlayableArea;

CENTER_OF_PLAYABLE_AREA = _centerOfPlayableArea;

publicVariable "CENTER_OF_PLAYABLE_AREA";


// TODO: Move spawning logic in its own function
// _playableAreaCenter = [_centerOfPlayableArea, 0, _maxRadius, 2, ] call BIS_fnc_findSafePos;