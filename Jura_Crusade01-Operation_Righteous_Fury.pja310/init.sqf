//Mission Init 
if ((!isServer) && (player != player)) then {waitUntil {player == player};};
//This forces the server to load scripts once players have been spawned.
//This is useful for certain scripts (like cutscenes) and other things that need to occur after players have spawned in
//This may prevent proper loading of other scripts that need to be done in pre-init such as fortify & slideshow

//Tickets

//Objectives

//Respawn 

//Effects 

//AI Spawners 

//Other Scripts 
call compile preprocessFileLineNumbers "scripts\fortify\fortify.sqf";
call compile preprocessFileLineNumbers "scripts\slideshow\slideshow.sqf";
call compile preprocessFileLineNumbers "scripts\radio\jammer.sqf";
//call compile preprocessFileLineNumbers "scripts\ai\flak.sqf";
//call compile preprocessFileLineNumbers "scripts\supplies\resupplyvic.sqf";
//Respawn
[west, 300] call BIS_fnc_respawnTickets;

//Civilians 

//Mission Name Space Variables
missionNameSpace setVariable ["startCap", 0, true];
missionNameSpace setVariable ["alsafz1", 0, true];
missionNameSpace setVariable ["alsafz2", 0, true];
missionNameSpace setVariable ["alsafz3", 0, true];
missionNameSpace setVariable ["alsafz4", 0, true];
missionNameSpace setVariable ["alsafz5", 0, true];