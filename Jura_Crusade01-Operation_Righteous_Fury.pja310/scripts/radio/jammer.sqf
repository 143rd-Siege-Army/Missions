[jammer1, 3] call BIS_fnc_DataTerminalAnimate;
[jammer2, 3] call BIS_fnc_DataTerminalAnimate;
[jammer3, 3] call BIS_fnc_DataTerminalAnimate;
[jammer4, 3] call BIS_fnc_DataTerminalAnimate;

[jammer1, 
"Disable Jamming Device", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", "true", "true", {}, {},
{
	[jammer1, 0] call BIS_fnc_DataTerminalAnimate;
	jammer1 setDamage 1;
}, {}, [], 15, 0, true, false] remoteExec ["BIS_fnc_holdActionAdd", 0, jammer1];

[jammer2, 
"Disable Jamming Device", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", "true", "true", {}, {},
{
	[jammer2, 0] call BIS_fnc_DataTerminalAnimate;
	jammer2 setDamage 1;
}, {}, [], 15, 0, true, false] remoteExec ["BIS_fnc_holdActionAdd", 0, jammer2];

[jammer1, 
"Disable Jamming Device", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", "true", "true", {}, {},
{
	[jammer3, 0] call BIS_fnc_DataTerminalAnimate;
	jammer3 setDamage 1;
}, {}, [], 15, 0, true, false] remoteExec ["BIS_fnc_holdActionAdd", 0, jammer3];

[jammer4, 
"Disable Jamming Device", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", "true", "true", {}, {},
{
	[jammer4, 0] call BIS_fnc_DataTerminalAnimate;
	jammer4 setDamage 1;
}, {}, [], 15, 0, true, false] remoteExec ["BIS_fnc_holdActionAdd", 0, jammer4];