//["scripts\pilot.sqf"] remoteExec ["execVM", 0];

pilot allowdamage true; 
deletemarker "pilotpos1";
deletemarker "pilotpos2";
//pilot say3D "pilot1";
pilot sidechat "Holy shit! What luck I have!";
//pilot playmove "Acts_PercMstpSlowWrflDnon_handup2";
sleep 3;
//call{playsound "pilot2"};
player sidechat "Look sharp and follow me!";
sleep 3;
[pilot] join (group player);
sleep 1;
pilot enableai "PATH";
hint "The pilot has joined your squad!";