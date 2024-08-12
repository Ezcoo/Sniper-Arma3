// DEBUG

private _distanceThreshold = call sniper_fnc_getProximityWarningDistanceThreshold;
private _warningProbability = call sniper_fnc_getProximityWarningProbability;

while { true } do {
    {
        if (player distance _x < _distanceThreshold) then {
            if (player != _x) then {
                if (random 1 < _warningProbability) then {
                    ["loomingDanger3"] call sniper_fnc_playSoundUI;
                };
            };
        };
    } forEach (call BIS_fnc_listPlayers);

    sleep 60;
};