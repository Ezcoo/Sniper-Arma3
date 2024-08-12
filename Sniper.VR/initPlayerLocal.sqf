waitUntil {!isNil "CENTER_OF_PLAYABLE_AREA"};

call sniper_fnc_spawnParachute;

systemChat "Paradropping player...";

player setVariable ["sniper_StartLoadout", getUnitLoadout player];

player enableStamina false;

[player] call sniper_fnc_setupPlayerEHs;

[] spawn sniper_fnc_monitorPlayersProximity;