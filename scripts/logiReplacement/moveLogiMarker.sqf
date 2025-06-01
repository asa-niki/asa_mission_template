_unit = _this select 1;
_actionID = _this select 2;

_unit removeAction _actionID;

lActivation = false; 
lDecision = false;
_actionID1 = _unit addAction["<t color='#ff0000'>Bewegen</t>", "lActivation = true; lDecision = true", nil, 1.5, true, true, "", "true", 0];
_actionID2 = _unit addAction["<t color='#0000ff'>Nicht bewegen</t>", "lActivation = false; lDecision = true", nil, 1.5, true, true, "", "true", 0];

waitUntil {lDecision == true};

_unit removeAction _actionID1;
_unit removeAction _actionID2;

if (lActivation == true) then {
	_position = getPos _unit;
	sleep 300;
	"supplyCrateSpawn" setMarkerPos _position;
	_unit addAction["<t color='#ff0000'>Logistikspawnpunkt bewegen</t>", "call JUJU_fnc_logiMarkerAddAction",  nil, 1.5, true, true, "", "true", 0];
}else{
	_unit addAction["<t color='#ff0000'>Logistikspawnpunkt bewegen</t>", "call JUJU_fnc_logiMarkerAddAction",  nil, 1.5, true, true, "", "true", 0];
};
