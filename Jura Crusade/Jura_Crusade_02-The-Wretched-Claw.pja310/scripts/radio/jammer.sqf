[jammer1, 3] call BIS_fnc_DataTerminalAnimate;

[jammer1, 
"Disable Jamming Device", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", "true", "true", {}, {},
{
	[jammer1, 0] call BIS_fnc_DataTerminalAnimate;
	jammer1 setDamage 1;
}, {}, [], 15, 0, true, false] remoteExec ["BIS_fnc_holdActionAdd", 0, jammer1];