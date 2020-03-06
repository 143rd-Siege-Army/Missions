// by ALIAS

if (!isServer) exitWith {};

_sky_obj = _this select 0;

if (!isNil {_sky_obj getVariable "is_ON"}) exitwith {}; 
_sky_obj setVariable ["is_ON",true,true];

[[_sky_obj],"AL_ambient_SFX\rupture_SFX.sqf"] remoteexec ["execvm",0,true];