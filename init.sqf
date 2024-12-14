if (isMultiplayer) then {
	[] execVM "Gattungsscript\scriptStart.sqf";
	arsenalarea_activation addAction["Arsenalscript deaktivieren", {
		arsenalarea_activation = false;
		publicVariable "arsenalarea_activation";
		{[_x,1,["ACE_SelfActions", "ASA", "Arsenal"]] call ace_interact_menu_fnc_removeActionFromObject} forEach allPlayers;  
		{[_x,1,["ACE_SelfActions", "ASA", "Loadouts"]] call ace_interact_menu_fnc_removeActionFromObject} forEach allPlayers;
		{[_x,1,["ACE_SelfActions", "ASA", "persArsenal"]] call ace_interact_menu_fnc_removeActionFromObject} forEach allPlayers;
	}, [], 1.5, true, false, "", "true", 5];
	
	arsenalarea_activation addAction["Arsenalscript aktivieren", {
		arsenalarea_activation = true;
		publicVariable "arsenalarea_activation";
		remoteExec ["JUJU_fnc_areaScript", 0];
	}, [], 1.5, true, false, "", "true", 5];
} else {
	arsenalarea_activation = true;
	publicVariable "arsenalarea_activation";
	
	missionNamespace setvariable ["SPLogLevel", 3];
	profileNamespace setvariable ["SPSavelocation", 1];
	
	arsenalarea_activation = "VR_3DSelector_01_incomplete_F" createVehicle [-10, -10, 0];
	arsenalarea_activation allowDamage false;
	
	arsenalarea_activation addAction["Arsenalscript deaktivieren", {
		arsenalarea_activation = false;
		publicVariable "arsenalarea_activation";
	}, [], 1.5, true, false, "", "true", 5];
	
	arsenalarea_activation addAction["Arsenalscript aktivieren", {
		arsenalarea_activation = true;
		publicVariable "arsenalarea_activation";
		[] execVM "Gattungsscript\areaScript.sqf";
	}, [], 1.5, true, false, "", "true", 5];
	
	if (isNil "dumpArsenal") then {
		dumpArsenal = "Land_PaperBox_closed_F" createVehicle [0, 0, 0];
		dumpArsenal allowDamage false;
		dumpArsenal enableSimulation false;
	};
	if (isNil "arsenalBox") then {
		arsenalBox = "asa_Arsenal_GER_F" createVehicle [0, 0, 0];
		arsenalBox allowDamage false;
		arsenalBox enableSimulation false;
	};

	[] execVM "Gattungsscript\scriptStart.sqf";
};