//This script selects one of several markers in a list, then spawns a unit there, and sends it towards a main marker.
//The unit then goes to Search and Destroy mode.
//The groups that are spawned are pushed into the Garbage Collecter in order to prevent group limit overload.

waitUntil {MissionNamespace getVariable ["startCap", 0] > 0};
missionNamespace setVariable ["alsaf1", 0];
missionNamespace setVariable ["alsaf2", 0];
missionNamespace setVariable ["alsaf3", 0];
missionNamespace setVariable ["alsaf4", 0];
missionNamespace setVariable ["alsaf5", 0];
//Prevents the scripts from spawning units until the objectives are assigned.

//Selects a random squad to spawn
_squads = [(configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "Ren_O_Mil_HQ"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_O_Mil_Sq"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_O_Milir"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_Lol_Milir"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_B_Hvy_AA")];
 _squad = selectRandom _squads;

_alsaf1Markers = ["alsaf1_1", "alsaf1_2","alsaf1_3","alsaf1_4","alsaf1_5"];
_alsaf2Markers = ["alsaf2_1", "alsaf2_2","alsaf2_3","alsaf2_4","alsaf2_5", "alsaf2_6"];
_alsaf3Markers = ["alsaf3_1", "alsaf3_2","alsaf3_3","alsaf3_4","alsaf3_5", "alsaf3_6"];
_alsaf4Markers = ["alsaf4_1", "alsaf4_2","alsaf4_3","alsaf4_4","alsaf4_5"];
_alsaf5Markers = ["alsaf5_1", "alsaf5_2","alsaf5_3","alsaf5_4"];

_alsaf1Var = missionNamespace getVariable "alsaf1";
_alsaf2Var = missionNamespace getVariable "alsaf2";
_alsaf3Var = missionNamespace getVariable "alsaf3";
_alsaf4Var = missionNamespace getVariable "alsaf4";
_alsaf5Var = missionNamespace getVariable "alsaf5";

	while {_alsaf1Var < 0}
	do {
		_spawnPos = alsaf1trig call BIS_fnc_randomPosTrigger;
		[_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint [getPos alsaf1trig, 150];
		_wp setWaypointType "SAD";
	};
//This is repeated for each of the objective areas.
	while {_alsaf2Var < 0}
	do {
		_spawnPos = alsaf2trig call BIS_fnc_randomPosTrigger;
		[_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint ["alsaf2", 150];
		_wp setWaypointType "SAD";
		sleep 120;
	};
	while {_alsaf3Var < 0} 
	do {
		_spawnPos = alsaf3trig call BIS_fnc_randomPosTrigger;
		[_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint ["alsaf3", 150];
		_wp setWaypointType "SAD";
		sleep 120;
	};
	while {_alsaf4Var < 0}
	do {
		_spawnPos = alsaf4trig call BIS_fnc_randomPosTrigger;
		[_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint ["alsaf4", 150];
		_wp setWaypointType "SAD";
		sleep 120;
	};
	while {_alsaf5Var < 0}
	do {
		_spawnPos = alsaf5trig call BIS_fnc_randomPosTrigger; 
		[_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint ["alsaf5", 150];
		_wp setWaypointType "SAD";
		sleep 120;
	};
//Once the zones are captured, enemies will stop spawning.