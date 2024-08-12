params ["_player"];

_player setVariable ["sniper_StartLoadout", getUnitLoadout player];
_player addEventHandler ["Respawn", { 
    private _loadout = player getVariable "sniper_StartLoadout"; 
    
    if (!isNil "_loadout") then {
        player setUnitLoadout _loadout;
    };

    call sniper_fnc_spawnParachute;
}];