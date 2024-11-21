dumpArsenal = "Land_PaperBox_closed_F" createVehicle [0,0,0];
arsenalBox = "asa_Arsenal_GER_F" createVehicle [0,0,0];
dumpArsenal allowDamage false;
arsenalBox allowDamage false;
dumpArsenal enableSimulation false;
arsenalBox enableSimulation false;
[] execVM "Gattungsscript\scriptStart.sqf";