//Mission Init 
if ((!isServer) && (player != player)) then {waitUntil {player == player};};
//This forces the server to load scripts once players have been spawned.
//This is useful for certain scripts (like cutscenes) and other things that need to occur after players have spawned in
//This may prevent proper loading of other scripts that need to be done in pre-init such as fortify & slideshow

//Tickets

//Objectives
call compile preprocessFileLineNumbers "scripts\objectives\t1.sqf";
//Respawn 

//Effects 

//AI Spawners 

//Other Scripts 
call compile preprocessFileLineNumbers "scripts\fortify\fortify.sqf";
call compile preprocessFileLineNumbers "scripts\slideshow\slideshow.sqf";
call compile preprocessFileLineNumbers "scripts\radio\jammer.sqf";
//call compile preprocessFileLineNumbers "scripts\supplies\resupplyvic.sqf";

//Civilians 

//Mission Name Space Variables

//Cutscene