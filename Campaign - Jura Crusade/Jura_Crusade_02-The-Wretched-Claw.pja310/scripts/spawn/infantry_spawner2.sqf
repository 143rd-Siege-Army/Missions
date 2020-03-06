//Selects a random squad to spawn
//execVM Passthrough Variable
if ((!isServer) && (player != player)) then {waitUntil {player == player};};

[] spawn {
	_squads = [(configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "Ren_O_Mil_HQ"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_O_Mil_Sq"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_O_Milir"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_Lol_Milir"), (configFile >> "CfgGroups" >> "East" >> "TIOW_GSC_B_O" >> "GSC_O_B_Militia" >> "GSC_B_Hvy_AA")];
	_squad = selectRandom _squads;
	_counter1 = 0;
	//spawntrig_2

	while {_counter1 < 10}
	do {
		_spawnPos = spawntrig_2 call BIS_fnc_randomPosTrigger;
		_group = [_spawnPos, east, _squad] call BIS_fnc_spawnGroup;
		_group deleteGroupWhenEmpty true;
		_wp = _group addWaypoint [getPos spawntrig_2, 150];
		_wp setWaypointType "SAD";
		_counter1 = _counter1 + 1;
		sleep 15;
	};
};