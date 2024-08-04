missionNamespace setVariable ["AllowActionTalk", true, true];
missionNamespace setVariable ["ActionTalkToMarcinko1", true, true];
missionNamespace setVariable ["ActionTalkToMarcinko2", true, true];
missionNamespace setVariable ["ActionTalkToMarcinko3", true, true];

missionNamespace setVariable ["ActionCallPOW", false, true];

ExtractAction = false;
RTBAction = false;
ChopperLZ = false;
ChopperRTB = false;

ActionEndMission = false;

missionNamespace setVariable ["ActionDebrief", false, true];

//Updates rescue pilot markers on the map. runs on server for performance.
[] spawn {
    private _offset = [(sin(random 360) * random 100), (cos(random 360) * random 100), 0];
    while {true} do {
        "PilotArea" setMarkerPos (getPosATL pilot vectorAdd _offset);
        "RescuePilotText" setMarkerPos (markerPos "PilotArea");
        sleep 1;
    };
};


