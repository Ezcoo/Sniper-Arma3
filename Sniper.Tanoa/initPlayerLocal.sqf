player allowDamage false;

waitUntil {!isNil "CENTER_OF_PLAYABLE_AREA"};


/* player addBackpack "B_Parachute"; 

player setPos [(CENTER_OF_PLAYABLE_AREA select 0), (CENTER_OF_PLAYABLE_AREA select 1), 1000];
*/

call sniper_fnc_spawnParachute;

systemChat "Paradropping player...";
