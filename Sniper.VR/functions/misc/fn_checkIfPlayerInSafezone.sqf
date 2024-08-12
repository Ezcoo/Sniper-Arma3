params ["_player"];

private _playerInSafezone = (getPosASL _player) inArea "Safezone";
private _artyProbability = call sniper_fnc_getArtyProbability;

systemChat "Checking if player in safezone...";

if (!_playerInSafezone) then {
    systemChat "Arty on the way!";
    if (random 1 < _artyProbability) then {
        systemChat "Arty really on the way!!!";
        [_player] call sniper_fnc_callArtyOnPlayer;
    };
};