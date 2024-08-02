//wait for naval patrol hold action. old one below was in trigger on activation
//player addAction ["<t color='#FFFF00'>Radio Headquarters</t>", {GlobalRadioHQ = false; publicVariable "GlobalRadioHQ"; ["scripts\RadioHQ.sqf"] remoteExec ["execVM", 0];}, nil, 8, false, true, "", "isNil 'GlobalRadioHQ'"];
[
	player,
	"<t color='#FFFF00'>Radio Headquarters</t>",
	"a3\missions_f_oldman\data\img\holdactions\holdaction_talk_ca.paa", //idle icon 
	"a3\missions_f_oldman\data\img\holdactions\holdaction_talk_ca.paa", //progress icon
	"isNil 'GlobalRadioHQ' && triggerActivated wait_task;", //condition
	"true", //condition progress
	{}, //code on start
	{}, // code every tick
	{
		GlobalRadioHQ = false; 
		publicVariable "GlobalRadioHQ"; 
		["scripts\RadioHQ.sqf"] remoteExec ["execVM", 0];
	}, // code on finish
	{}, // code on interuption
	[], //arguements
	3, //duration
	8, //order from top
	true, //remove on finish
	false, //show if unconcious
	false //show in middle of screen
] call BIS_fnc_holdActionAdd;

//extract action
player addAction [
    "<t color='#FFFF00'>Radio for Extraction</t>", 
    { 
	{[_x,"ALL"] remoteExec ["disableAI",0,true];} forEach crew samlauncher;
	missionNamespace setVariable ["ExtractAction", false, true];
    missionNamespace setVariable ["ChopperLZ", true, true];
    missionNamespace setVariable ["RTBAction", true, true];
	[player, "Rankin, Covey. Requesting exfil. Over."] remoteExec ["sideChat"];
	sleep 5;
	[covey, "Covey, Rankin. Air inbound one mike, over."] remoteExec ["sideChat"];
    }, 
    nil, 
    8, 
    false, 
    true, 
    "", 
    "ExtractAction"
];

//bomb for weapon cache
if (!isNil "weaponcache") then {
[
	weaponcache,
	"<t color='#FFFF00'>Place C-4 Plastic Explosive</t>",
	"a3\ui_f_oldman\data\igui\cfg\holdactions\destroy_ca.paa", //idle icon 
	"a3\ui_f_oldman\data\igui\cfg\holdactions\destroy_ca.paa", //progress icon
	"_this distance _target < 3", //condition
	"true", //condition progress
	{}, //code on start
	{}, // code every tick
	{
			player addAction [
			"<t color='#FF0000'>Detonate Weapons Cache</t>", 
			{
			"M_Mo_82mm_AT_LG" createVehicle (getPos weaponcache);
			sleep 1;
			deletevehicle weaponcache;
			deletevehicle ammo_crate2;
			deletevehicle ammo_crate3;
			deletevehicle shelter1;
			}, 
			nil, 
			8, 
			false, 
			true,
			"",
			"_this distance weaponcache < 30"
			];

	}, // code on finish
	{}, // code on interuption
	[], //arguements
	3, //duration
	8, //order from top
	true, //remove on finish
	false, //show if unconcious
	false //show in middle of screen
] call BIS_fnc_holdActionAdd;
};

//bomb for food cache
if (!isNil "foodcache") then {
[
	foodcache,
	"<t color='#FFFF00'>Place C-4 Plastic Explosive</t>",
	"a3\ui_f_oldman\data\igui\cfg\holdactions\destroy_ca.paa", //idle icon 
	"a3\ui_f_oldman\data\igui\cfg\holdactions\destroy_ca.paa", //progress icon
	"_this distance _target < 3", //condition
	"true", //condition progress
	{}, //code on start
	{}, // code every tick
	{
		player addAction [
			"<t color='#FF0000'>Detonate Food Cache</t>", 
			{ 
			"M_Mo_82mm_AT_LG" createVehicle (getPos foodcache);
			sleep 1;
			deletevehicle foodcache;
			deletevehicle food1;
			deletevehicle food4;
			deletevehicle food5;
			deletevehicle food6;
			deletevehicle food7;
			deletevehicle food8;
			deletevehicle food9;
			deletevehicle food10;
			}, 
			nil, 
			8, 
			false, 
			true,
			"",
			"_this distance foodcache < 30"
			];
		
	}, // code on finish
	{}, // code on interuption
	[], //arguements
	3, //duration
	8, //order from top
	true, //remove on finish
	false, //show if unconcious
	false //show in middle of screen
] call BIS_fnc_holdActionAdd;
};
