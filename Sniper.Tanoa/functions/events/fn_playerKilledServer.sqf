params ["_unit", "_killer", "_bounty"];

private _systemChatMessage = format ["%1 has been killed by %2! They have been rewarded $%3.", name _unit, name _killer, _bounty];

[_systemChatMessage] remoteExec ["sniper_fnc_sendSystemChat"];

["killNotification"] remoteExec ["sniper_fnc_playSoundUI", _killer];