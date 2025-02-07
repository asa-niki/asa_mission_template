if (isMultiplayer) then {
	arsenal_area_activation = true;
	[] execVM "Gattungsscript\scriptStart.sqf";
	if (isNil "arsenalarea_activation") then {
		arsenalarea_activation = "VR_3DSelector_01_incomplete_F" createVehicle [-10, -10, 0];
		publicVariable "arsenalarea_activation";
		arsenalarea_activation allowDamage false;
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
} else {
	arsenal_area_activation = true;
	publicVariable "arsenal_area_activation";
	
	missionNamespace setvariable ["SPLogLevel", 3];
	profileNamespace setvariable ["SPSavelocation", 1];
	
	arsenalarea_activation = "VR_3DSelector_01_incomplete_F" createVehicle [-10, -10, 0];
	arsenalarea_activation allowDamage false;
	
	arsenalarea_activation addAction["Arsenalscript deaktivieren", {
		arsenal_area_activation = false;
		publicVariable "arsenal_area_activation";
	}, [], 1.5, true, false, "", "true", 5];
	
	arsenalarea_activation addAction["Arsenalscript aktivieren", {
		arsenal_area_activation = true;
		publicVariable "arsenal_area_activation";
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