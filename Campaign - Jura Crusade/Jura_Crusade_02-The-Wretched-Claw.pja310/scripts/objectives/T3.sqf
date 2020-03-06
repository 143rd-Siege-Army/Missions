["T2", "SUCCEEDED"] call BIS_fnc_taskSetState;

[west, ["T3"], ["Secure the Northern Region of the AO. The Armoured Coy HQ and the Town will provide an effective springboard to reaching PDF Regional Command.", "Secure the Northern Region of the AO", "Secure the Northern Region of the AO"], objNull, "ASSIGNED", 1, true, "danger", false] call BIS_fnc_taskCreate;

[west, ["T3_1", "T3"], ["Secure the PDF Armoured Coy. Additional vehicular assets may be available with an effective capture. Do not destroy munitorum assets.", "Secure the PDF Armoured Coy", "Secure the PDF Armoured Coy"], [15144,9771.18,0], "ASSIGNED", 1, true, "danger", false] call BIS_fnc_taskCreate;

[west, ["T3_1", "T3"], ["Secure the town of Ma'Arat. This town shall act as a springboard for further operations in the region.", "Secure the town of Ma'Arat", "Secure the town of Ma'Arat"], [16986,10400.2,0], "ASSIGNED", 1, true, "danger", false] call BIS_fnc_taskCreate;