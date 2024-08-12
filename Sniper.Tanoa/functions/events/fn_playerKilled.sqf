player addEventHandler ["Killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];

    if (_unit == _killer || isNull _killer) exitWith {call sniper_fnc_resetLocalPlayerBounty;};

    private _bounty = call sniper_fnc_getPlayerBounty;

    [_bounty] remoteExec ["sniper_fnc_setPlayerBounty", _instigator];
    
    [_unit, _killer, _bounty] remoteExec ["sniper_fnc_playerKilledServer", 2];
    
    call sniper_fnc_resetLocalPlayerBounty;

}];
