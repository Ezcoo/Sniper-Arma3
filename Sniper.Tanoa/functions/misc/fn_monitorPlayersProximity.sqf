// DEBUG

while { true } do {
    {
        if (player distance _x < 50) then {
            if (random 1 < 0.5) then {
                ["loomingDanger3"] call sniper_fnc_playSoundUI;
            };
        };
    } forEach (call BIS_fnc_listPlayers);

    sleep 60;
};