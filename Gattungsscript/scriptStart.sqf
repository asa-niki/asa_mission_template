arsenalAction = ["Arsenal", "Arsenal", "images\ASA.jpg", {[arsenalBox, player] call ace_arsenal_fnc_openBox;}, {true}] call ace_interact_menu_fnc_createAction;
loadoutsAction = ["Loadouts", "Loadouts", "images\ASA.jpg", {[] execVM "Gattungsscript\rollenMenue.sqf";}, {true}] call ace_interact_menu_fnc_createAction;
asaAction = ["ASA", "ASA", "images\ASA.jpg", {true}, {true}] call ace_interact_menu_fnc_createAction;
persAction = ["persArsenal", "Persoenliches Arsenal", "images\ASA.jpg", {[player] execVM "Gattungsscript\Persoenlich\persArsenal.sqf";}, {true}] call ace_interact_menu_fnc_createAction;

arsenal_area_activation = true;

if (isNil "arsenalarea_activation") then {
	arsenalarea_activation = "VR_3DSelector_01_incomplete_F" createVehicle [-10, -10, 0];
	publicVariable "arsenalarea_activation";
	arsenalarea_activation allowDamage false;
};
if (isNil "dumpArsenal") then {
	dumpArsenal = "Land_PaperBox_closed_F" createVehicle [0, 0, 0];
	publicVariable "dumpArsenal";
	dumpArsenal allowDamage false;
	dumpArsenal enableSimulation false;
};
if (isNil "arsenalBox") then {
	arsenalBox = "asa_Arsenal_GER_F" createVehicle [0, 0, 0];
	publicVariable "arsenalBox";
	arsenalBox allowDamage false;
	arsenalBox enableSimulation false;
};

arsenalarea_activation addAction["Arsenalscript deaktivieren", {
	arsenal_area_activation = false;
	publicVariable "arsenal_area_activation";
	{[_x,1,["ACE_SelfActions", "ASA", "Arsenal"]] call ace_interact_menu_fnc_removeActionFromObject} forEach allPlayers;  
	{[_x,1,["ACE_SelfActions", "ASA", "Loadouts"]] call ace_interact_menu_fnc_removeActionFromObject} forEach allPlayers;
	{[_x,1,["ACE_SelfActions", "ASA", "persArsenal"]] call ace_interact_menu_fnc_removeActionFromObject} forEach allPlayers;
}, [], 1.5, true, false, "", "true", 5];

arsenalarea_activation addAction["Arsenalscript aktivieren", {
	arsenal_area_activation = true;
	publicVariable "arsenal_area_activation";
	remoteExec ["JUJU_fnc_areaScript", 0];
}, [], 1.5, true, false, "", "true", 5];
	
call JUJU_fnc_areaScript;