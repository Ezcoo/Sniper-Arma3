params ["_player"];

_playableAreaRadius = [call sniper_fnc_getPlayerCount] call sniper_fnc_getPlayableAreaRadius;

private _parachuteSpawnPos = [(CENTER_OF_PLAYABLE_AREA select 0) + ((random _playableAreaRadius * 2) - _playableAreaRadius), (CENTER_OF_PLAYABLE_AREA select 1) + ((random _playableAreaRadius * 2) - _playableAreaRadius), call sniper_fnc_getParachuteSpawnAltitude];

while {surfaceIsWater _parachuteSpawnPos} do {
    _parachuteSpawnPos = [(CENTER_OF_PLAYABLE_AREA select 0) + ((random _playableAreaRadius * 2) - _playableAreaRadius), (CENTER_OF_PLAYABLE_AREA select 1) + ((random _playableAreaRadius * 2) - _playableAreaRadius), call sniper_fnc_getParachuteSpawnAltitude];
};

private _chute = "Steerable_Parachute_F" createVehicle [0,0,0];
_chute setPos _parachuteSpawnPos; 
_player moveIndriver _chute;