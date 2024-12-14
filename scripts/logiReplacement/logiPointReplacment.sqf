_moveableUnits = [Golf1, Golf2];
{_x addAction["<t color='#ff0000'>Container bewegen</t>", "call JUJU_fnc_logiContainerAddAction",  nil, 1.5, true, true, "", "true", 0]} forEach _moveableUnits;
{_x addAction["<t color='#ff0000'>Logistikspawnpunkt bewegen</t>", "call JUJU_fnc_logiMarkerAddAction",  nil, 1.5, true, true, "", "true", 0]} forEach _moveableUnits;