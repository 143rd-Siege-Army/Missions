["T1", "SUCCEEDED"] call BIS_fnc_taskSetState;

[west, ["T2"], ["The town of Sanobar may be in the clutches of the enemy. Secure the town, and ensure that collateral damage is kept to a minimum. Ensuring security of the populace is of utmost importance at this time. <br /> Damaging civilian assets or injuring civilians may result in them falling to the claws of the Enemy. Ensure that civilains are treated well in order to maintain control over the planet's populace.", "Seize and Secure Sanobar", "Sanobar"], objNull, "ASSIGNED", 1, true, "seize", false] call BIS_fnc_taskCreate;