private _allPlayers = call BIS_fnc_listPlayers;
private _previousPlayableAreaSize = [call sniper_fnc_getPlayerCount] call sniper_fnc_getPlayableAreaRadius;
diag_log _previousPlayableAreaSize;

while { true } do {

    private _currentPlayableAreaSize = [call sniper_fnc_getPlayerCount] call sniper_fnc_getPlayableAreaRadius;

    diag_log _currentPlayableAreaSize;

    [_previousPlayableAreaSize] call sniper_fnc_drawPlayableArea;

    if (_currentPlayableAreaSize != _previousPlayableAreaSize) then {

        hint "Trying to change area size now!";

        sleep 2;

        _newAreaSize = [_previousPlayableAreaSize, _currentPlayableAreaSize] call sniper_fnc_commitPlayableAreaSizeChange;
        _previousPlayableAreaSize = _newAreaSize;
    };

    sleep 2;

    hint "NEW DIAMETER!!!";
    diag_log "NEW DIAMETER!!!";
};