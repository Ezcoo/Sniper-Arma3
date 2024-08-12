player addEventHandler ["Killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];

    private _bounty = call sniper_fnc_getPlayerBounty;

    [_bounty] remoteExec ["sniper_fnc_setPlayerBounty", _instigator];
    
    [name _unit, name _killer, _bounty] remoteExec ["sniper_fnc_playerKilledServer", 2];

}];
