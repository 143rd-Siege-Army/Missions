[west, ["T1"], ["Purge Heretical Forces in the marked grid squares.", "Purge", "Purge"], objNull, "ASSIGNED", 1, true, "danger", false] call BIS_fnc_taskCreate;


[west, ["T1_A", "T1"], ["The town of Kortuk has suspected heretical forces.", "Kortuk", "Kortuk"], [4755.33,8787.76,0.506], "CREATED", 1, false, "seize", false] call BIS_fnc_taskCreate;
[west, ["T1_B", "T1"], ["The town of Yaygin has suspected heretical forces.", "Yaygin", "Yaygin"], [6596.62,8418.89,0], "CREATED", 1, false, "seize", false] call BIS_fnc_taskCreate;
[west, ["T1_C", "T1"], ["The town of Omuzbazi has suspected heretical forces.", "Omuzbazi", "Omuzbazi"], [5371.57,10960.1,0], "CREATED", 1, false, "seize", false] call BIS_fnc_taskCreate;
[west, ["T1_D", "T1"], ["The town of Tuzluca has suspected heretical forces.", "Tuzluca", "Tuzluca"], [6810.02,10264.1,0], "CREATED", 1, false, "seize", false] call BIS_fnc_taskCreate;
[west, ["T1_E", "T1"], ["The town of Eleskirt has suspected heretical forces.", "Eleskirt", "Eleskirt"], [5893.24,12298.9,0], "CREATED", 1, false, "seize", false] call BIS_fnc_taskCreate;

player createDiaryRecord ["Diary", ["Mission", "143rd Siege will Purge the allocated grid squares with extreme prejudice."]];
player createDiaryRecord ["Diary", ["Execution", "143rd Siege will purge through use of the Emperor's judgement upon heretics. Complete purging of civilian, PDF, and heretical forces is obligatory.."]];
player createDiaryRecord ["Diary", ["Signals", "See Signals Documentation given in mission documentation."]];
player createDiaryRecord ["Diary", ["Situation", "Heretical forces have risen up on the planet, and Inquistor Karglas Vyros has authorized ACTION EXTREMIS. Currently, enemy composition is unknown, but expect the deployment of limited Astra Militarum assets repurposed against the Emperor. <br /> <br /> Some PDF troops equipped with Cadian gear have been seen in the Area of Operations. They are also to be purged if encountered, whether friendly or not."]];

hintSilent "Mission Briefings have been transmitted from High Command. Check your Briefing Section inside your Departmento Munitorum supplied Map Kit. If you do not have a map kit, report to the nearest commissar for summary execution.";

[west, ["T2"], ["Purge Heretical Base.", "Purge", "Purge"], [8458.28,14218.8,-0.555], "CREATED", 1, true, "danger", false] call BIS_fnc_taskCreate;
