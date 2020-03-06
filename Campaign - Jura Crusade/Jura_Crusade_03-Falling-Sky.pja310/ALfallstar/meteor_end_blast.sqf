// by ALIAS
// nul = [_poz_end] execvm "ALfallstar\meteor_end_blast.sqf";

if (!hasInterface) exitWith {};

	_poz	= _this select 0;
	_xv		= _this select 1;
	_yv		= _this select 2;

	_fum = "#particlesource" createVehicleLocal _poz;
	_fum setParticleCircle [40,[0,0,0]];
	_fum setParticleRandom [0.5,[1,1,0],[50,50,70],3,0.5,[0,0,0,1],1,0];
	_fum setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1,10,[0,0,0],[0,0,20],5,30,5,1,[30,50,100],[[0,0,0,1],[0,0,0,0.5],[0.5,0.5,0.5,0]],[0.08], 1, 0, "", "", _poz];
	_fum setDropInterval 0.001;	
	
	_bolovani = "#particlesource" createVehicleLocal _poz;
	_bolovani setParticleCircle [20,[0,0,0]];
	_bolovani setParticleRandom [5,[0.3,0.3,0],[_xv*5,_yv*5,100],0,1,[0, 0, 0, 0.1],0.2,0];
	_bolovani setParticleParams [["\A3\data_f\ParticleEffects\Universal\Mud.p3d", 1, 0, 1], "", "SpaceObject", 1, 7, [0, 0, 0], [_xv*2,_yv*2,150],2,200,5,3, [2, 1, 1], [[0, 0, 0, 1], [0, 0, 0, 0.5], [0.5, 0.5, 0.5, 0]], [0.125],0.5,0, "", "", _poz];
	_bolovani setDropInterval 0.005;
	
	_meteor_voice = "land_helipadempty_f" createVehiclelocal _poz;
	_meteor_voice say3D ["expozie",2000];
	enableCamShake true;
	addCamShake [3, 5, 35];
	
	_craterus = "Crater" createVehiclelocal _poz;
	
	_li_end = "#lightpoint" createVehicleLocal _poz;
	_li_end setLightIntensity 5000;
	_li_end setLightDayLight true;	
	_li_end setLightAttenuation [800,100,100,0,5,800]; 
	_li_end setLightUseFlare true;
	_li_end setLightFlareSize 100;
	_li_end setLightFlareMaxDistance 2000;	
	_li_end setLightAmbient[1, 0.5, 0];
	_li_end setLightColor[1, 0.5, 0];
	sleep 0.5;
	deleteVehicle _fum;
	deleteVehicle _bolovani;
	playSound "earthquakes";
	sleep 1+random 1;
	addCamShake [0.5, 30, 35];	
	deleteVehicle _li_end;
	sleep 5.3;
	enableCamShake false;
	deleteVehicle _meteor_voice;