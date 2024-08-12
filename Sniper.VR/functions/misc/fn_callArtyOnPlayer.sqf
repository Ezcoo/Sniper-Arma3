params ["_player"];

[_player, "", 100, 5, [5, 20], {!alive _player}, 10] spawn BIS_fnc_fireSupportVirtual;