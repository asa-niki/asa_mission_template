arsenalAction = ["Arsenal", "Arsenal", "images\ASA.jpg", {[arsenalBox, player] call ace_arsenal_fnc_openBox;}, {true}] call ace_interact_menu_fnc_createAction;
loadoutsAction = ["Loadouts", "Loadouts", "images\ASA.jpg", {[] execVM "Gattungsscript\rollenMenue.sqf";}, {true}] call ace_interact_menu_fnc_createAction;
asaAction = ["ASA", "ASA", "images\ASA.jpg", {true}, {true}] call ace_interact_menu_fnc_createAction;
persAction = ["persArsenal", "Persoenliches Arsenal", "images\ASA.jpg", {[player] execVM "Gattungsscript\Persoenlich\persArsenal.sqf";}, {true}] call ace_interact_menu_fnc_createAction;
[] execVM "Gattungsscript\areaScript.sqf";