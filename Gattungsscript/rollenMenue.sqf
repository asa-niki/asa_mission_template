createDialog "klassendialog2";
getSelectedLoadout = 0;
_unLocalRoll = "";
_rollList = (findDisplay 5100) displayCtrl 1500;
_rollName = [
	"Zugfuehrer",
	"Gruppenfuehrer",
	"Truppenfuehrer",
	"Schuetze",
	"AT-Schuetze",
	"MG Schuetze",
	"MG 2",
	"DMR Schuetze",
	"Grenadier",
	"Sanitaeter Bravo",
	"Sanitaeter Charlie",
	"Notfallsanitaeter GrpFhr",
	"Notfallsanitaeter",
	"Instandsetzer GrpFhr",
	"Instandsetzer",
	"Fahrzeugbesatzung",
	"Feldjaeger"
];
_rollUnits_T = [
	"ASA_Zugfuehrer_T",
	"ASA_Gruppenfuehrer_T",
	"ASA_Truppfuehrer_T",
	"ASA_Schuetze_T",
	"ASA_ATSchuetze_T",
	"ASA_MGSchuetze_T",
	"ASA_MG2_T",
	"ASA_DMSchuetze_T",
	"ASA_Grenadier_T",
	"ASA_SanBravo_T",
	"ASA_SanCharlie_T",
	"ASA_NotSanGrpFhr_T",
	"ASA_NotSan_T",
	"ASA_InstandsetzerGrpFhr_T",
	"ASA_Instandsetzer_T",
	"ASA_Fahrzeugbesatzung_T",
	"ASA_Feldjaeger_T"
];
_rollUnits_F = [
	"ASA_Zugfuehrer_F",
	"ASA_Gruppenfuehrer_F",
	"ASA_Fruppfuehrer_F",
	"ASA_Schuetze_F",
	"ASA_ATSchuetze_F",
	"ASA_MGSchuetze_F",
	"ASA_MG2_F",
	"ASA_DMSchuetze_F",
	"ASA_Grenadier_F",
	"ASA_SanBravo_F",
	"ASA_SanCharlie_F",
	"ASA_NotSanGrpFhr_F",
	"ASA_NotSan_F",
	"ASA_InstandsetzerGrpFhr_F",
	"ASA_Instandsetzer_F",
	"ASA_Fahrzeugbesatzung_F",
	"ASA_Feldjaeger_F"
];


{
	_addToRollList = _x;
	_rollList lbAdd _addToRollList;
} forEach _rollName;

waitUntil {
	!dialog
};
if (getSelectedLoadout == 1) then {
	getSelectedLoadout = 0;
	_rollSelected = missionNamespace getVariable "selectedRole";
	_parseGV = _rollSelected select 1;
	
	_camo = missionNamespace getVariable ["camo", "fleck"];
	if (_camo == "fleck") then {
		_unLocalRoll = _rollUnits_F select _parseGV;
	}else{
		_unLocalRoll = _rollUnits_T select _parseGV;
	};
	
	player setUnitLoadout _unLocalRoll;

	switch (_rollName select _parseGV) do {
	case "Notfallsanitaeter": {player setVariable ["ace_medical_medicClass", 2, true]; player setVariable ["ACE_isEngineer", 0, true]; player setVariable ["roll", "notSan", true]; };
	case "Notfallsanitaeter GrpFhr": {player setVariable ["ace_medical_medicClass", 2, true]; player setVariable ["ACE_isEngineer", 0, true]; player setVariable ["roll", "notSanSL", true]; };
	case "Instandsetzer GrpFhr": {player setVariable ["ace_medical_medicClass", 0, true]; player setVariable ["ACE_isEngineer", 2, true]; player setVariable ["roll", "iSL", true]; };
	case "Instandsetzer": {player setVariable ["ace_medical_medicClass", 2, true]; player setVariable ["ACE_isEngineer", 2, true]; player setVariable ["roll", "ing", true]; };
	case "Sanitaeter Charlie": {player setVariable ["ace_medical_medicClass", 2, true]; player setVariable ["ACE_isEngineer", 0, true]; player setVariable ["roll", "sanC", true]; };
	case "Sanitaeter Bravo": {player setVariable ["ace_medical_medicClass", 1, true]; player setVariable ["ACE_isEngineer", 0, true]; player setVariable ["roll", "sanB", true]; };
	default {
		player setVariable ["ace_medical_medicClass", 0, true];
		player setVariable ["ACE_isEngineer", 0, true];
		switch (_rollName select _parseGV) do {
			case "Zugfuehrer": {player setVariable ["roll", "pl", true];};
			case "Gruppenfuehrer": {player setVariable ["roll", "sl", true];};
			case "Truppenfuehrer": {player setVariable ["roll", "fl", true];};
			case "Schuetze": {player setVariable ["roll", "rifleman", true];};
			case "AT-Schuetze": {player setVariable ["roll", "at", true];};
			case "MG Schuetze": {player setVariable ["roll", "mg", true];};
			case "MG 2": {player setVariable ["roll", "mg2", true];};
			case "DMR Schuetze": {player setVariable ["roll", "dm", true];};
			case "Grenadier": {player setVariable ["roll", "gl", true];};
			case "Fahrzeugbesatzung": {player setVariable ["roll", "crew", true];};
			case "Feldjaeger": {player setVariable ["roll", "fj", true];};
		};
	};
};
} else {
	getSelectedLoadout = 0;
};
