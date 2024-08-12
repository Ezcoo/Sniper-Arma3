params ["_areaDiameter"];

private _outOfAreaArtySafeDistance = call sniper_fnc_getOutOfZoneArtySafeDistance;

if (!isNil "Safezone") then {
    deleteMarkerLocal "Safezone";
};

if (!isNil "OuterSafezone") then {
    deleteMarker "OuterSafezone";
};

private _safezoneMarker = createMarkerLocal ["Safezone", CENTER_OF_PLAYABLE_AREA];

"Safezone" setMarkerShapeLocal "ELLIPSE";
"Safezone" setMarkerSizeLocal [_areaDiameter, _areaDiameter];
"Safezone" setMarkerBrushLocal "Border";
// Broadcast updated marker to all clients
"Safezone" setMarkerColor "ColorBlack";

private _outerSafezoneMarker = createMarkerLocal ["Outersafezone", CENTER_OF_PLAYABLE_AREA];

"OuterSafezone" setMarkerShapeLocal "ELLIPSE";
"OuterSafezone" setMarkerSizeLocal [(_areaDiameter + _outOfAreaArtySafeDistance), (_areaDiameter + _outOfAreaArtySafeDistance)];
"OuterSafezone" setMarkerBrushLocal "Border";
// Broadcast updated marker to all clients
"OuterSafezone" setMarkerColor "ColorRed";