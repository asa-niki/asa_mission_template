// Arsenal Script Deaktivieren

arsenalarea_activation = "VR_3DSelector_01_incomplete_F" createVehicle [-10, -10, 0];
arsenalarea_activation allowDamage false;

arsenal_area_activation = true;
publicVariable "arsenal_area_activation";

arsenalarea_activation addAction["Arsenalscript deaktivieren", {
	arsenal_area_activation = false;
	publicVariable "arsenal_area_activation";
}, [], 1.5, true, false, "", "true", 5];

arsenalarea_activation addAction["Arsenalscript aktivieren", {
	arsenal_area_activation = true;
	publicVariable "arsenal_area_activation";
	[] execVM "areaScript.sqf";
}, [], 1.5, true, false, "", "true", 5];

dumpArsenal = "Land_PaperBox_closed_F" createVehicle [0, 0, 0];
arsenalBox = "asa_Arsenal_GER_F" createVehicle [0, 0, 0];
dumpArsenal allowDamage false;
arsenalBox allowDamage false;
dumpArsenal enableSimulation false;
arsenalBox enableSimulation false;
[] execVM "Gattungsscript\scriptStart.sqf";