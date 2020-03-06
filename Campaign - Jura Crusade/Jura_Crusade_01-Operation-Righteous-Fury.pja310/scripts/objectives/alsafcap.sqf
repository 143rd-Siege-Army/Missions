["alsaf5", "SUCCEEDED"] call BIS_fnc_setTaskState;
["T3" "SUCCEEDED"] call BIS_fnc_taskSetState;

[west, ["T4"], ["The promethium depots are being held by the Enemy for nefarious purposes. Secure the depots in order to allow the Emperor's holy fuel to flow. <br /> Capturing these fields will ensure that our vehicles remain supplied over the course of the campaign, at least until further supplies can be acquired. Damage to the fields will result in reduced access to fuel supplies. <br /> Multiple sub-taskings have been assigned by High Command. Complete these sub-objectives. <br /> Order of capture is as follows: Promethium Field, Promethium Depot.", "Promethium Depot", "Promethium Depot"], objNull, "ASSIGNED", 2, true, "seize", false] call BIS_fnc_taskCreate;

[west, ["prom1", "T4"], ["The promethium depots are being held by the Enemy for nefarious purposes. Secure the depots in order to allow the Emperor's holy fuel to flow.", "Promethium Field", "Promethium Field"], objNull, "CREATED", 1, false, "seize", false] call BIS_fnc_taskCreate;

[west, ["prom2", "T4"], ["The promethium depots are being held by the Enemy for nefarious purposes. Secure the depots in order to allow the Emperor's holy fuel to flow.", "Promethium Depot", "Promethium Depot"], objNull, "CREATED", 1, false, "seize", false] call BIS_fnc_taskCreate;
