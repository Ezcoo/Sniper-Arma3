params ["_player"];

[_player, "", 200, 5, [5, 20], {(!alive _player) || (getPosASL _player inArea "OuterSafezone")}, 10] spawn BIS_fnc_fireSupportVirtual;