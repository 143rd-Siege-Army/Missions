["T2", "SUCCEEDED"] call BIS_fnc_taskSetState;
missionNameSpace setVariable ["startCap", 1, true];
[west, ["T3"], ["The city of Al Safyrah has been secured by the enemy. They have begun to dig in, and have crippled the local PDF forces that have responded. Additionally, the PDF airfield, supply base, and artillery base are cut off from reinforcements. <br /> Multiple sub-taskings have been assigned by High Command. Complete these sub-objectives and then secure the airfield. <br /> Order of capture is as follows: South West, North West, North, Center, East.", "Seize Al Safyrah", "Al Safyrah"], objNull, "ASSIGNED", 2, 1, "seize", 1] call BIS_fnc_taskCreate;

[west, ["alsaf1", "T3"], ["The city of Al Safyrah has been secured by the enemy. They have begun to dig in, and have crippled the local PDF forces that have responded. Additionally, the PDF airfield, supply base, and artillery base are cut off from reinforcements.", "Al Safyrah - South West", "Al Safyrah"], objNull, "CREATED", 1, 0, "seize", 1] call BIS_fnc_taskCreate;

[west, ["alsaf2", "T3"], ["The city of Al Safyrah has been secured by the enemy. They have begun to dig in, and have crippled the local PDF forces that have responded. Additionally, the PDF airfield, supply base, and artillery base are cut off from reinforcements.", "Al Safyrah - North West", "Al Safyrah"], objNull, "CREATED", 1, 0, "seize", 1] call BIS_fnc_taskCreate;

[west, ["alsaf3", "T3"], ["The city of Al Safyrah has been secured by the enemy. They have begun to dig in, and have crippled the local PDF forces that have responded. Additionally, the PDF airfield, supply base, and artillery base are cut off from reinforcements.", "Safyrah - North", "Al Safyrah"], objNull, "CREATED", 1, 0, "seize", 1] call BIS_fnc_taskCreate;

[west, ["alsaf4", "T3"], ["The city of Al Safyrah has been secured by the enemy. They have begun to dig in, and have crippled the local PDF forces that have responded. Additionally, the PDF airfield, supply base, and artillery base are cut off from reinforcements.", "Safyrah - Center", "Al Safyrah"], objNull, "CREATED", 1, 0, "seize", 1] call BIS_fnc_taskCreate;

[west, ["alsaf5", "T3"], ["The city of Al Safyrah has been secured by the enemy. They have begun to dig in, and have crippled the local PDF forces that have responded. Additionally, the PDF airfield, supply base, and artillery base are cut off from reinforcements.", "Safyrah - East", "Al Safyrah"], objNull, "CREATED", 1, 0, "seize", 1] call BIS_fnc_taskCreate;

call compile preprocessFileLineNumbers "scripts\spawn\infantry_spawner.sqf";
//Runs the opfor spawner script