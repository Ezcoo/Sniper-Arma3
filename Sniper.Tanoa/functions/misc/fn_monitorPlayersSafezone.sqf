while { true } do {

    sleep 60;
    
    {
        [_x] call sniper_fnc_checkIfPlayerInSafezone;
    } forEach (call BIS_fnc_listPlayers);

};