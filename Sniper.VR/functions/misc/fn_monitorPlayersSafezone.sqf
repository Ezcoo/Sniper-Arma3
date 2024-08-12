while { true } do {
    {
        [_x] call sniper_fnc_checkIfPlayerInSafezone;
    } forEach (call BIS_fnc_listPlayers);

    sleep 60;
};