ptboat addAction ["<t color='#FFFF00'>Place Timed Explosive: 15 Minutes</t>", {timebomb = false; publicVariable "timebomb"; ["scripts\bomb.sqf"] remoteExec ["execVM", 0];}, nil, 8, false, true, "", "isNil 'timebomb'", 5.5]; 
ptboat addAction ["<t color='#FFFF00'>Place Timed Explosive: 30 Minutes</t>", {timebomb = false; publicVariable "timebomb"; ["scripts\bomb2.sqf"] remoteExec ["execVM", 0];}, nil, 8, false, true, "", "isNil 'timebomb'", 5.5]; 
ptboat addAction ["<t color='#FFFF00'>Place Timed Explosive: 45 Minutes</t>", {timebomb = false; publicVariable "timebomb"; ["scripts\bomb3.sqf"] remoteExec ["execVM", 0];}, nil, 8, false, true, "", "isNil 'timebomb'", 5.5];

["scripts\bombs.sqf"] remoteExec ["execVM", 0, true];



// refer to discord convo with hypoxic if you forget this script
private _inHeli = vehicle pilot isKindOf "Helicopter"; //rescued pilot is in heli

if (!_inHeli) exitWith { false }; // dont run the code below unless rescue pilot is in helicopter

private _heli = vehicle pilot; // returns the vehicle the the pilot is in
private _inTriggerArea = pilot inArea myTrigger; // retruns true if the rescue pilot is in the trigger area
private _friendlyHeli = side group driver _heli == west; // returns true if the side of the group of the driver is WEST
private _allPlayersInHeli = units west findIf { // checks all west units and returns true if all players are alive and in the helicopter
    isPlayer _x &&
    alive _x &&
    !(_x in myHeli)
} == -1;

systemChat str [_inHeli, _inTriggerArea, _friendlyHeli, _allPlayersInHeli];
_inHeli && _inTriggerArea && _friendlyHeli && _allPlayersInHeli

How to convert to remote exec
_caller say3D ["question1",100];
_left say3D _right;
[_left, _right] remoteExec ["command"];
[_caller, ["question1",100]] remoteExec ["say3D"];

jet flyover script:
[[8500,5500,50],[8500,9500,50], 200, “normal”, “vn_o_air_mig19_cap”, EAST] call bis_fnc_ambientflyby;

for any smoke to fire trigger:
"vn_m18" in _magazine

case ("red" in toLower _smokeType): {"SmokeShellRed"};
					case ("blue" in toLower _smokeType): {"SmokeShellBlue"};
					case ("green" in toLower _smokeType): {"SmokeShellGreen"};
					case ("yellow" in toLower _smokeType): {"SmokeShellYellow"};
					case ("orange" in toLower _smokeType): {"SmokeShellOrange"};

[[7100,11000,0], [7100,3000,0], 175, "LIMITED", "vn_o_air_mig19_cap", WEST] call BIS_fnc_ambientFlyBy;

[[7200,11100,0], [7200,3000,0], 175, "LIMITED", "vn_o_air_mig19_cap", WEST] call BIS_fnc_ambientFlyBy;

76561197974183451 - player id

helo support trigger
findIf{(_x isKindOf "Helicopter") && (_x isKindOf "Blufor")} > -1

Can someone please help with this code? Someone wrote it for me on r/armadev and it works on local host and single player but doesnt work on dedicated server. What it does is locate a thrown purple smoke grenade within a marker and make it has infinite smoke plume. The trigger associated with it fires and completes the task but the smoke grenade doesn't quite work. Instead of infinite smoke plume the grenade pops and smokes for a second or two then is deleted and no smoke is created after it is deleted.

I see delete vehicle thrown smoke in there which makes me think that part is working. Then I see createvehicleLocal. I suspect this to be the issue because the smoke emitter is never created. I also see it says Local
```if (isNil "mission_SmokeinLZArea") then {
	_player addEventHandler ["FiredMan", {
		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_vehicle"];
		if !isNil "mission_SmokeinLZArea" exitWith {
			_unit removeEventHandler [_thisEvent, _thisEventHandler];
		};
		if (_weapon == "Throw" && {_magazine == "vn_m18_purple_mag"} && {_unit inArea "marker_1_lzArea"}) then {
			[_projectile] spawn {
				params ["_thrownSmoke"];
				waitUntil {uiSleep 1; abs speed _thrownSmoke == 0};
				if !(_thrownSmoke inArea "marker_1_lzArea") exitWith {};
				missionNamespace setVariable ["mission_SmokeinLZArea", true, true];
				private _smokeEmitter = "ModuleSmoke_F" createVehicleLocal getPos _thrownSmoke;
				_smokeEmitter setVariable ["repeat", 1];
				_smokeEmitter setVariable ["type", "SmokeShellPurple"];
				deleteVehicle _thrownSmoke;
			};
		};
	}];
};```
