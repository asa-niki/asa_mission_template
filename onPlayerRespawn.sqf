params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
if (isNil {player getVariable "hasSpawnedBefore"}) then {
    [_newUnit, 1, ["ACE_SelfActions"], asaAction] call ace_interact_menu_fnc_addActionToObject;
    player setVariable ["hasSpawnedBefore", true, true];
    saveProfileNamespace; 
};