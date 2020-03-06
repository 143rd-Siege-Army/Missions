//Adds ACE logistics capacity, fuel, and repair to certan vehicles/objects as needed
supply1 setVariable ["ace_rearm_isSupplyVehicle", true];
[supply1, 1000] call ace_rearm_fnc_setSupplyCount;
[supply1, 500] call ace_refuel_fnc_makeSource;
repair1 setVariable ["ace_isRepairFacility", true]; 
