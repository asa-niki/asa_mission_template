createDialog "logistics_point_menu";
spawnBox = 0;
_supplyManifest = (findDisplay 25500) displayCtrl 25502;
_thingsToPopulateLB = [];
_thingsToPopulateCN = [];
#include "Supply_Config.sqf"

if ((_VanillaNATO) || {(_VanillaCSAT) || {_VanillaAAF || _VanillaFIA}}) then
{
	#include "presets\Supply_Vanilla.sqf"
	if (_VanillaNATO) then
	{
		_thingsToPopulateLB = _thingsToPopulateLB + _thingsToPopulateLB_Vanilla_NATO;
		_thingsToPopulateCN = _thingsToPopulateCN + _thingsToPopulateCN_Vanilla_NATO;
	};
	if (_VanillaCSAT) then
	{
		_thingsToPopulateLB = _thingsToPopulateLB + _thingsToPopulateLB_Vanilla_CSAT;
		_thingsToPopulateCN = _thingsToPopulateCN + _thingsToPopulateCN_Vanilla_CSAT;
	};
	if (_VanillaAAF) then
	{
		_thingsToPopulateLB = _thingsToPopulateLB + _thingsToPopulateLB_Vanilla_AAF;
		_thingsToPopulateCN = _thingsToPopulateCN + _thingsToPopulateCN_Vanilla_AAF;
	};
	if (_VanillaFIA) then
	{
		_thingsToPopulateLB = _thingsToPopulateLB + _thingsToPopulateLB_Vanilla_FIA;
		_thingsToPopulateCN = _thingsToPopulateCN + _thingsToPopulateCN_Vanilla_FIA;
	};
};

if (_ACE) then
{
	#include "presets\Supply_ACE.sqf"
	_thingsToPopulateLB = _thingsToPopulateLB + _thingsToPopulateLB_ACE;
	_thingsToPopulateCN = _thingsToPopulateCN + _thingsToPopulateCN_ACE;
};
	
if (_NIARMS_FULL) then
{
	#include "presets\Supply_NIARMS.sqf"
	_thingsToPopulateLB = _thingsToPopulateLB + _thingsToPopulateLB_NIARMS;
	_thingsToPopulateCN = _thingsToPopulateCN + _thingsToPopulateCN_NIARMS;
};

{
	_addThisToListBox = _x;
	_supplyManifest lbAdd _addThisToListBox;
} forEach _thingsToPopulateLB;

waitUntil { !dialog };

if (spawnBox == 1) then
{
	spawnBox = 0;
	_supplySelected = missionNamespace getVariable "selectedSupplyBox";
	_parseGV = _supplySelected select 1;
		
	_unLocalSupply = _thingsToPopulateCN select _parseGV;
	_supply = _unLocalSupply createVehicle getMarkerPos "supplyCrateSpawn";
} else
{
	spawnBox = 0;
};