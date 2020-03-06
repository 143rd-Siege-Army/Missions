// by ALIAS
// nul = [JIP] execVM "AL_intro\intro.sqf";

waitUntil {time > 0};

_jip_enable	= _this select 0;

[[_jip_enable],"scripts\cutscene\time_srv.sqf"] remoteExec ["execVM"];
waitUntil {!isNil "curr_time"};

if (!hasInterface) exitWith {};

if ((!curr_time) or (_jip_enable<0)) then {

//Protestor Animations
	prot switchmove "Acts_A_M04_briefing";
	{
		_animation = ["c7a_bravoTOerc_idle1", "c7a_bravoTOerc_idle13", "c7a_bravoTOerc_idle10", "c7a_bravoTOerc_idle9", "c7a_bravoTOerc_idle7", "c7a_bravoTOerc_idle8", "c7a_bravoTOerc_idle5"] call BIS_fnc_selectRandom;
		_x switchMove _animation;
	} forEach [p1, p2, p3, p4, p5, p6];
//BIS NEWSREEL
	[
		parseText "<t size='3'>Live in Dayr Hafir - Blessing of the Emperor?</t>",
		parseText "Good Weather for Tourism. 143rd DKoK Siege Unit has Landed on Planet for Recreation. PDF Forces are preparing to put down rioting workers in Al Safyrah."
	] spawn BIS_fnc_AAN;

	playsound "Speech";

/*
What a wonderful day it is my fellow workers! today, you shall receive the blessing of the emperor! Our emperor himself! The holy, glorious, six-armed emperor! Fear not, his blessing shall bring us to a new level. We shall ascend and rise up against the choke of the unholy governors of this planet. Then, the emperor himself shall come and visit! Join me, brothers and sisters, in ascendance! We shall take the weapons of our slavers and rise up! Fight with me! FOR THE SIX-ARMED EMPEROR!
*/

/* ----- how to use camera script -----------------------------------------------------------------------

_camera_shot = [position_1_name, position_2_name, target_name, duration, zoom_level1, zoom_level_2, attached, x_rel_coord, y_rel_coord, z_rel_coord,last_shot] execVM "camera_work.sqf";

Where
_camera_shot	- string, is the name/number of the camera shot, you can have as many as you want see examples from down bellow
position_1_name - string, where camera is created, replace it with the name of the object you want camera to start from
position_2_name - string, the object where you want camera to move, if you don't want to move from initial position put the same name as for position_1_name
target_name   	- string, name of the object you want the camera to look at
duration 		- seconds, how long you want the camera to function on current shot
zoom_level_1 	- takes values from 0.01 to 2, FOV (field of view) value for initial position
zoom_level_2	- takes values from 0.01 to 2, FOV value for second position, if you don't to change you can give the same value as you did for zoom_level_1
attached		- boolean, if you want to attach camera to an moving object its value has to be true, otherwise must be false
					in this case position_1_name must have the same value as position_2_name
x_rel_coord		- meters, relative position to the attached object on x coordinate
y_rel_coord		- meters, relative position to the attached object on y coordinate
z_rel_coord		- meters, relative position to the attached object on z coordinate
last_shot		- boolean, true if is the last shot in your movie, false otherwise

-----------------------------------------------------------------------------------------------------------*/

// - do not edit or delete the lines downbelow, this line must be before first camera shot
	loopdone = false;
	while {!loopdone} do {
//^^^^^^^^^^^^^^^^^^^^^^ DO NOT EDIT OR DELETE ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


// EXAMPLES------ insert your lines for camera shots starting from here -----------------------------------------

_firstshot = [cam1, cam1, target1, 45, 0.1, 0.5, false, 0, 0, 0,TRUE] execVM "scripts\cutscene\camera_work.sqf";
waitUntil {scriptdone _firstshot};

/*
if you want to add a forth or a fifth camera shot use a code like:
_forthshot = [cam5, cam6, target4, 7, 1, 1, false] execVM "camera_work.sqf";
waitUntil {scriptDone _forthshot};

** Note that last boolean parameter will tell the script if the camera shot is the last one or not,
make sure that last camera has that parameter true and the intermediar cameras has it false as in my examples above

>>!! don't forget to name the objects cam5, cam6, target4 in editor 

You can add as many camera shots as you want 
but you have to name the script differently 
and don't forget to add the wait line after each shot
waitUntil {scriptDone _xxxshot};
*/

// --------------->> end of camera shots <<---------------------------------------------------------
		};

	cutText [" ", "BLACK IN", 3];
	_camera = "camera" camCreate (getpos player);
	_camera cameraeffect ["terminate", "back"];
	camDestroy _camera;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [100];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 4;
	//Delete protestors and other crap
	{
		deleteVehicle _x;
	} forEach [p1, p2, p3, p4, p5, p6, prot, stat1, stat2, stat3];
	(uiNamespace getVariable "BIS_AAN") closeDisplay 1;
};