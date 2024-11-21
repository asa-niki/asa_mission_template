while {true} do {
	_listOfPlayers = allPlayers inAreaArray arsenalArea; //Spieler in der Zone
	if (!isNil "_listOfPlayers") then {
		if (isNil "playerArsenalList") then {
			no = _listOfPlayers;				//no ist die Liste aller Spieler die kein Arsenal haben aber in der Zone sind
			playerArsenalList = _listOfPlayers; //playerArsenalList ist die Liste aller Spieler die ein Arsenal haben
		}else {
			no = _listOfPlayers - playerArsenalList
		};
		
		{if (getPlayerUID _x isEqualTo "76561198823187514" || getPlayerUID _x isEqualTo "76561198337717542" || getPlayerUID _x isEqualTo "76561198354281943") then { //juju, Core, Kalacos
			[_x, 1, ["ACE_SelfActions", "ASA"], persAction] call ace_interact_menu_fnc_addActionToObject;
		};
		}forEach no;

		{[_x, 1, ["ACE_SelfActions", "ASA"], arsenalAction] call ace_interact_menu_fnc_addActionToObject} forEach no;
		{[_x, 1, ["ACE_SelfActions", "ASA"], loadoutsAction] call ace_interact_menu_fnc_addActionToObject} forEach no;
	};
	if (playerArsenalList isEqualTo _listOfPlayers) then {
		
	}else {
		replace = playerArsenalList - _listOfPlayers;
		{if (getPlayerUID _x isEqualTo "76561198823187514" || getPlayerUID _x isEqualTo "76561198337717542" || getPlayerUID _x isEqualTo "76561198354281943") then { //juju, Core, Kalacos
			[_x,1,["ACE_SelfActions", "ASA", "persArsenal"]] call ace_interact_menu_fnc_removeActionFromObject;
		};
		}forEach replace;
		{[_x,1,["ACE_SelfActions", "ASA", "Arsenal"]] call ace_interact_menu_fnc_removeActionFromObject} forEach replace;  
		{[_x,1,["ACE_SelfActions", "ASA", "Loadouts"]] call ace_interact_menu_fnc_removeActionFromObject} forEach replace;
	};
	playerArsenalList = _listOfPlayers;
	sleep 5;
};