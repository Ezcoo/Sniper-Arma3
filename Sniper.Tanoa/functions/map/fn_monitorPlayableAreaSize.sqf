private _allPlayers = BIS_fnc_listPlayers;
private _previousPlayableAreaSize = [random 101] call sniper_fnc_playableAreaDiameter;
diag_log _previousPlayableAreaSize;

while { true } do {

    private _currentPlayableAreaSize = [random 101] call sniper_fnc_playableAreaDiameter;

    diag_log _currentPlayableAreaSize;

    if (_currentPlayableAreaSize != _previousPlayableAreaSize) then {

        hint "Trying to change area size now!";

        sleep 2;

        _newAreaSize = [_previousPlayableAreaSize, _currentPlayableAreaSize] call sniper_fnc_commitPlayableAreaSizeChange;
        _previousPlayableAreaSize = _newAreaSize;
    };

    sleep 10;

    hint "NEW DIAMETER!!!";
    diag_log "NEW DIAMETER!!!";
};