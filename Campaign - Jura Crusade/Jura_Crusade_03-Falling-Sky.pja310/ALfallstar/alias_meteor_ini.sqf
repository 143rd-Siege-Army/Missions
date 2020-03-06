// by ALIAS
// nul = [delay] execvm "ALfallstar\alias_meteor_ini.sqf";
// Tutorial: WIP

if (!isServer) exitWith {};

_delay = _this select 0;
nul = [] execVM "ALfallstar\alias_hunt.sqf";

waitUntil {!isNil "hunt_alias"};

alias_meteors = true;
publicVariable "alias_meteors";

while {alias_meteors} do {
	nul = [] execvm "ALfallstar\alias_meteor.sqf";
	sleep _delay;
};