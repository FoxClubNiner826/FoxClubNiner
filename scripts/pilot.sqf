//["scripts\pilot.sqf"] remoteExec ["execVM", 0];

pilot allowdamage true; 
//deletemarker "PilotArea";
//pilot say3D "pilot1";
pilot sidechat "Holy shit! What luck I have!";
//pilot playmove "Acts_PercMstpSlowWrflDnon_handup2";
sleep 3;
//call{playsound "pilot2"};
player sidechat "Look sharp and follow me!";
sleep 3;
//[pilot] join (group player);
//sleep 1;
pilot enableai "PATH"; //have to remoteexec this command even though its gloabl effect if its in a server only trigger
hint "The pilot is now in your group!";

/*
this allowDamage false;
[] spawn { 
  while {not isnull pilot} do { "PilotPosition" setmarkerpos getpos pilot; "PilotArea" setmarkerpos getpos pilot; sleep 1; }; 
};
pilot disableAI "PATH";

allPlayers findIf {_x distance markerPos "PilotPosition" < 20} > -1



"PilotArea" setMarkerPos (getPos pilot vectorAdd [(sin(random 360) * random 100), (cos(random 360) * random 100), 0]);

[] spawn {
    private _offset = [(sin(random 360) * random 100), (cos(random 360) * random 100), 0];
    while {true} do {
        "PilotArea" setMarkerPos (getPos pilot vectorAdd _offset);
        "RescuePilotText" setMarkerPos (markerPos "PilotArea");
        sleep 1;
    };
};

this allowDamage false;
pilot disableAI "PATH";