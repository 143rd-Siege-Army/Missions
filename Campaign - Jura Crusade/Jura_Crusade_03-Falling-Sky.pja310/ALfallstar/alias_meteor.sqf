// by ALIAS
// nul = [] execvm "ALfallstar\alias_meteor.sqf";

	private ["_xx_dest","_yy_dest"];
	// [18857.9,18980]
	//[17828.1,18371.2,0]
	// creeaza obiect
	_dire	= [1000,-1000] call BIS_fnc_selectRandom;	
	_xx = (17828)+random _dire;
	_dire	= [1000,-1000] call BIS_fnc_selectRandom;	
	_yy = (18371)+random _dire;
	_poz_ini = [_xx, _yy, 1200];
		
	_falling_meteor_main = "Land_Battery_F" createVehicle _poz_ini;
	_falling_meteor_main setPosATL _poz_ini;
	
	// lumina
	[[_falling_meteor_main],"ALfallstar\meteor_ini_blast.sqf"] remoteExec ["execVM"];
	
	// sunet bariera sonica
	_bariera_sunet = ["bariera_1","bariera_2","bariera_3","bariera_4", "bariera_5"] call BIS_fnc_selectRandom;	
	[_falling_meteor_main,[_bariera_sunet,4000]] remoteExec ["say3d"];
	// stabileste destinatie random
	_dire_dest	= [1000,-1000] call BIS_fnc_selectRandom;	
	_xx_dest 	= _xx+random _dire_dest;
	_dire_dest	= [1,-1] call BIS_fnc_selectRandom;
	_yy_dest 	= _yy+random _dire_dest;
	
	// creeaza smoke pe client
	[[_falling_meteor_main],"ALfallstar\alias_meteoreffect.sqf"] remoteExec ["execVM"];
	// deplaseaza obiect
	_falling_meteor_main setvelocity [_xx_dest/200,_yy_dest/200,-100];
	waitUntil {sleep 0.1; (getpos _falling_meteor_main select 2)<20};
	_poz_end = getPos _falling_meteor_main;
	// genereaza explozia si effect explozie
	[[_poz_end,_xx_dest/200,_yy_dest/200],"ALfallstar\meteor_end_blast.sqf"] remoteExec ["execVM"];
	deleteVehicle _falling_meteor_main;
	
	_nearobjects = nearestObjects[_poz_end,[],100];
	{if((_x isKindOf "LandVehicle") or (_x isKindOf "Man") or (_x isKindOf "Air")) then {_x setvelocity [random 3,random 3,random 30];_x setdamage 1} else {_x setdamage [1,false]}} foreach _nearobjects;
