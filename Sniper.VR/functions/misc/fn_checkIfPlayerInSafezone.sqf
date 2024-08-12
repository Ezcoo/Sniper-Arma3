params ["_player"];

private _playerInSafezone = (getPosASL _player) inArea "Safezone";
private _artyPossibility = 0.9;

systemChat "Checking if player in safezone...";

if (!_playerInSafezone) then {
    systemChat "Arty on the way!";
    if (random 1 < _artyPossibility) then {
        systemChat "Arty really on the way!!!";
        [_player] call sniper_fnc_callArtyOnPlayer;
    };
};