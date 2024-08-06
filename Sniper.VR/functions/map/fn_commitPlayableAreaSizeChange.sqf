params ["_previousPlayableAreaSize", "_currentPlayableAreaSize"];

private _areaSizeDifference = _previousPlayableAreaSize - _currentPlayableAreaSize;

private _areaSizeNow = _previousPlayableAreaSize;

private _step = _areaSizeDifference / 6;

/*
if (_step > 2) then {
    _step = 2;
};

if (_step < -2) then {
    _step = -2;
};
*/


if (_areaSizeDifference > 0) then {
    
    while {_areaSizeNow >= _currentPlayableAreaSize} do {

        private _newAreaSize = _areaSizeNow - _step;

        hint str _newAreaSize;

        [_newAreaSize] call sniper_fnc_drawPlayableArea;

        _areaSizeNow = _newAreaSize;

        sleep 2;
    };
} else {
    while {_areaSizeNow <= _currentPlayableAreaSize} do {

        private _newAreaSize = _areaSizeNow - _step;

        hint str _newAreaSize;

        [_newAreaSize] call sniper_fnc_drawPlayableArea;

        _areaSizeNow = _newAreaSize;

        sleep 2;
    };
};

_areaSizeNow;