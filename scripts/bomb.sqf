if !(isServer) exitWith {};

private _startTime = time;
private _lastPlayTime = _startTime - 40;
while { sleep 1; time <= _startTime + (60*13) } do {
    if ((time - _lastPlayTime) >= 40) then {
        [ptboat, ["timebomb", 50]] remoteExec ["say3d", 0];
        _lastPlayTime = time;
    };
};

"M_Mo_82mm_AT_LG" createVehicle (ASLToAGL getPosASL ptboat);