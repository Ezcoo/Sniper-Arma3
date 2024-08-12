params ["_areaDiameter"];

if (!isNil "Safezone") then {
    deleteMarkerLocal "Safezone";
};

private _SafezoneMarker = createMarkerLocal ["Safezone", CENTER_OF_PLAYABLE_AREA];

"Safezone" setMarkerShapeLocal "ELLIPSE";
"Safezone" setMarkerSizeLocal [_areaDiameter, _areaDiameter];
"Safezone" setMarkerBrushLocal "Border";
// Broadcast updated marker to all clients
"Safezone" setMarkerColor "ColorRed";