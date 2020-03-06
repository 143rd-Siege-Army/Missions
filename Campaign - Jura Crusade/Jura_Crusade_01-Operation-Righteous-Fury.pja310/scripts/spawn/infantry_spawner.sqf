//This script selects one of several markers in a list, then spawns a unit there, and sends it towards a main marker.
//The unit then goes to Search and Destroy mode.
//The groups that are spawned are pushed into the Garbage Collecter in order to prevent group limit overload.
//Prevents the scripts from spawning units until the objectives are assigned.

//Selects a random squad to spawn
[] spawn {
	_squads = [(configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "Ren_O_Mil_HQ"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_O_Mil_Sq"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_O_Milir"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_Lol_Milir"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_B_Hvy_AA")];
	_squad = selectRandom _squads;

	_alsaf1Markers = ["alsaf1_1", "alsaf1_2","alsaf1_3","alsaf1_4","alsaf1_5"];
	_alsaf2Markers = ["alsaf2_1", "alsaf2_2","alsaf2_3","alsaf2_4","alsaf2_5", "alsaf2_6"];
	_alsaf3Markers = ["alsaf3_1", "alsaf3_2","alsaf3_3","alsaf3_4","alsaf3_5", "alsaf3_6"];
	_alsaf4Markers = ["alsaf4_1", "alsaf4_2","alsaf4_3","alsaf4_4","alsaf4_5"];
	_alsaf5Markers = ["alsaf5_1", "alsaf5_2","alsaf5_3","alsaf5_4"];

	_spawnAlsaf2 = selectRandom _alsaf2Markers;
	_spawnAlsaf3 = selectRandom _alsaf3Markers;
	_spawnAlsaf4 = selectRandom _alsaf4Markers;
	_spawnAlsaf5 = selectRandom _alsaf5Markers;

	_counter1 = 0;
	_counter2 = 0;
	_counter3 = 0;
	_counter4 = 0;
	_counter5 = 0;

	while {_counter1 < 10}
	do {
		_spawnAlsaf1 = selectRandom _alsaf1Markers;
		_spawnPos = getMarkerPos _spawnAlsaf1;
		_group = [_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint [getPos alsaf1trig, 150];
		_wp setWaypointType "SAD";
		_counter1 = _counter1 + 1;
		sleep 15;
	};
		while {_counter2 < 10}
	do {
		_spawnAlsaf2 = selectRandom _alsaf2Markers;
		_spawnPos = getMarkerPos _spawnAlsaf2;
		_group = [_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint [getPos alsaf2trig, 150];
		_wp setWaypointType "SAD";
		_counter2 = _counter2 + 1;
		sleep 15;
	};
		while {_counter3 < 10}
	do {
		_spawnAlsaf3 = selectRandom _alsaf3Markers;
		_spawnPos = getMarkerPos _spawnAlsaf3;
		_group = [_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint [getPos alsaf3trig, 150];
		_wp setWaypointType "SAD";
		_counter3 = _counter3 + 1;
		sleep 15;
	};
		while {_counter4 < 10}
	do {
		_spawnAlsaf4 = selectRandom _alsaf4Markers;
		_spawnPos = getMarkerPos _spawnAlsaf4;
		_group = [_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint [getPos alsaf4trig, 150];
		_wp setWaypointType "SAD";
		_counter4 = _counter4 + 1;
		sleep 15;
	};
		while {_counter5 < 10}
	do {
		_spawnAlsaf5 = selectRandom _alsaf5Markers;
		_spawnPos = getMarkerPos _spawnAlsaf5;
		_group = [_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint [getPos alsaf5trig, 150];
		_wp setWaypointType "SAD";
		_counter5 = _counter5 + 1;
		sleep 15;
	};
};