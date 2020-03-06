[west, ["T1"], ["Secure the Objectives in the AO.", "Secure the objectives within the Area of Operations", "Secure the objectives within the Area of Operations"], objNull, "ASSIGNED", 1, true, "danger", false] call BIS_fnc_taskCreate;

[west, ["T1_1", "T1"], ["Secure Darkhush. Friendly PDF troops may be pinned down there as per the last comms burst from the post.", "Secure Darkhush", "Secure Darkhush"], [16464.1,14121,0], "ASSIGNED", 1, true, "danger", false] call BIS_fnc_taskCreate;

[west, ["T1_2", "T1"], ["Secure Al Fuah. Much of the PDF administrative capacity is kept here, and as such there may be valuable intel here.", "Secure Al Fuah", "Secure Al Fuah"], [12831.9,13396.5,0], "ASSIGNED", 1, true, "danger", false] call BIS_fnc_taskCreate;

[west, ["T1_3", "T1"], ["Secure Al Kuna. Intel suggests that an insurgent facility is gathering and arming rebels here.", "Secure Al Kuna", "Secure Al Kuna"], [15460.2,17217.7,0], "ASSIGNED", 1, true, "danger", false] call BIS_fnc_taskCreate;

[west, ["T1_4", "T1"], ["Secure Incirkli. The town is filled with civilians, and will require a heavy push to secure.", "Secure Incirkli", "Secure Incirkli"], [16500.7,19130.3,0], "ASSIGNED", 1, true, "danger", false] call BIS_fnc_taskCreate;

[west, ["T1_5", "T1"], ["Secure PDF Regional Command. The spaceport here will ensure incoming supplies, and better control of PDF forces.", "Secure PDF Regional Command", "Secure PDF Regional Command"], [18933.1,18957.9,0], "ASSIGNED", 1, true, "danger", false] call BIS_fnc_taskCreate;

player createDiaryRecord ["Diary", ["Mission", "143rd Siege will secure the following objectives, including the locations of Darkhush, Al Fuah, Al Kuna, Incirkli, and the PDF Regional Command."]];
player createDiaryRecord ["Diary", ["Execution", "143rd Siege will secure the locations through use of the Emperor's judgement upon heretical Aetheonian regiments. Additionally, units will prevent civilian losses, and assist local PDF forces in policing the populace IOT prevent the spread of corruption."]];
player createDiaryRecord ["Diary", ["Signals", "See Signals Documentation given in mission documentation."]];
player createDiaryRecord ["Diary", ["Situation", "Local PDF elements are in disarray after loss of comms with the PDF Regional Command. Local units are currently enforcing public peace by assuming Arbites duty temporarily. Currently, enemy composition is unknown, but expect the deployment of limited Astra Militarum assets repurposed against the Emperor. <br /> <br /> PDF forces equipped with a mixture of Astra Militarum and older macht-pattern weapons and vehicles is conducting policing and patrol activities. PDF troops are currently under Theatre Command, and will provide assistance as requested. <br /> <br /> Additional PDF troops may be found in the field, assist them as required. <br /> <br /> Some renegade PDF forces are now present in the AO, as well as hostile civilian forces. Ensure you conduct proper target identification."]];

hintSilent "Mission Briefings have been transmitted from High Command. Check your Briefing Section inside your Departmento Munitorum supplied Map Kit. If you do not have a map kit, report to the nearest commissar for summary execution.";