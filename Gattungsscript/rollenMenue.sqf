createDialog "klassendialog2";
getSelectedLoadout = 0;
_rollList = (findDisplay 5100) displayCtrl 1500;
_rollName = [
	"Schuetze",
	"AT Schuetze",
	"Gruppenfuehrer",
	"Truppfuehrer",
	"DM Schuetze",
	"Grenadier",
	"Instandsetzer",
	"MG2",
	"MG Schuetze",
	"Zugfuehrer",
	"Fahrzeugbesatzung"
];
_rollUnits = [
	"ASA_Schuetze_F",
	"ASA_ATSchuetze_F",
	"ASA_Gruppenfuehrer_F",
	"ASA_Truppfuehrer_F",
	"ASA_DMSchuetze_F",
	"ASA_Grenadier_F",
	"ASA_Instandsetzer_F",
	"ASA_MG2_F",
	"ASA_MGSchuetze_F",
	"ASA_Zugfuehrer_F",
	"ASA_Fahrzeugbesatzung_F"
];

{
	_addToRollList = _x;
	_rollList lbAdd _addToRollList;
} forEach _rollName;

waitUntil { !dialog };
if (getSelectedLoadout == 1) then {
	getSelectedLoadout = 0;
	_rollSelected = missionNamespace getVariable "selectedRole";
	_parseGV = _rollSelected select 1;

	_unLocalRoll = _rollUnits select _parseGV;
	player setUnitLoadout _unLocalRoll;
}else{
	getSelectedLoadout = 0;
};