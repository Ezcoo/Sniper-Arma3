params ["_areaDiameter"];

if (!isNil "PlayableArea") then {
    deleteMarkerLocal "PlayableArea";
};

private _playableAreaMarker = createMarkerLocal ["PlayableArea", CENTER_OF_PLAYABLE_AREA];

"PlayableArea" setMarkerShapeLocal "ELLIPSE";
"PlayableArea" setMarkerSizeLocal [_areaDiameter, _areaDiameter];
"PlayableArea" setMarkerBrushLocal "Border";
// Broadcast updated marker to all clients
"PlayableArea" setMarkerColor "ColorRed";