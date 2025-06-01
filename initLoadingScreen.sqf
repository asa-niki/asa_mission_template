params ["_display"];

private _background = _display ctrlCreate ["RscPicture", -1];

_background ctrlSetPosition [
    safezoneXAbs,
    safezoneY,
    safezoneWAbs,
    safezoneH
];
_background ctrlCommit 0;
_background ctrlSetText "#(rgb,8,8,3)color(0.2,0.2,0.2,1)";

private _size = 0.5;
private _width = 1 * safezoneW;
private _height = 0.57 * safezoneH * (getResolution#4);

private _picture = _display ctrlCreate ["RscPicture", -1];

_picture ctrlSetPosition [
    0.5-_width/2,
    0.5-_height/2,
    _width, _height
];
_picture ctrlCommit 0;
_picture ctrlSetText "images\intro.jpg";

private _text = _display ctrlCreate ["RscLoadingText", -1];

_text ctrlSetPosition [
    0.5-_width/2,
    0.2,
    _width, _height
];
_text ctrlCommit 0;
_text ctrlSetText "";