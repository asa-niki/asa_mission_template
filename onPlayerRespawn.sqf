params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
_camo = missionNamespace getVariable ["camo", "fleck"]; //Hier eintragen welcher Tarn für die Map vorgesehen ist. "fleck" für Flecktarn, "tropen" für Tropentarn
if (_camo == "fleck") then {
    call JUJU_fnc_camoFleck;
}else{
    call JUJU_fnc_camoTropen;
};
if (isNil {player getVariable "hasSpawnedBefore"}) then {
    [_newUnit, 1, ["ACE_SelfActions"], asaAction] call ace_interact_menu_fnc_addActionToObject;
    player setVariable ["hasSpawnedBefore", true, true];
    saveProfileNamespace; 
};