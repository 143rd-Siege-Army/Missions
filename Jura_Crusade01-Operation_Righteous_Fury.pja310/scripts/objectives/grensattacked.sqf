[west, ["T1"], ["The Grenadier detachment is under attack at 155024, and require immediate assistance. Break all recreational trench digging activities and prepare an armed response against heretical forces.", "Assist the Grenadier Detachment", "Grenadiers Grid Location"], objNull, "ASSIGNED", 1, 1, "danger", 1] call BIS_fnc_taskCreate;

player createDiaryRecord ["Diary", ["Mission", "143rd Siege will secure the local area, including the locations of Sanobar, Al Safyrah, the Promethium Depot, and the Grenadier Post."]];
player createDiaryRecord ["Diary", ["Execution", "143rd Siege will secure the locations through use of the Emperor's judgement upon heretical Aetheonian regiments. Additionally, units will prevent civilian losses, and assist local PDF forces in policing the populace IOT prevent the spread of corruption."]];
player createDiaryRecord ["Diary", ["Signals", "See Signals Documentation given in mission documentation."]];
player createDiaryRecord ["Diary", ["Situation", "An Aethonian regiment also on mandatory R and R has fallen to the scourge of the Great Devourer, and has begun assaulting local PDF positions. Additionally, the guard post that protects entry into our regiment's current base of operations, which is manned by the Grenadiers, is currently under assault. Currently, enemy composition is unknown, but expect the deployment of limited Astra Militarum assets repurposed against the Emperor. <br /> <br /> PDF forces equipped with a mixture of Astra Militarum and older macht-pattern weapons and vehicles is responding to the situation at this time. A logistics unit, control post, and an artillery unit are currently facing assault, but will attempt to provide assistence once they push off the Emperor damned enemy. <br /> <br /> Assist these units at your discretion."]];

hintSilent "Mission Briefings have been transmitted from High Command. Check your Briefing Section inside your Departmento Munitorum supplied Map Kit. If you do not have a map kit, report to the nearest commissar for summary execution.";

loud_1 say3d ["Poacher", 150, 1, false];
loud_2 say3d ["Poacher", 150, 1, false];
loud_3 say3d ["Poacher", 150, 1, false];
loud_4 say3d ["Poacher", 150, 1, false];