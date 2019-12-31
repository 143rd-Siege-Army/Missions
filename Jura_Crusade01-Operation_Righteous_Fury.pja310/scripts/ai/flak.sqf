//Look for aircraft
//Check if aircraft are in marker area 
//Spawn flak around aircraft within the marker area till they GTFO
_flakSleep = random [3, 5, 10];
while {true} do {
	_allVehicles = vehicles;
	_aircraft = (_x isKindOf "Plane") forEach _allVehicles;
	sleep 120;
};

while {true} do {
	_inArea = ["flak_marker", _aircraft] call inAreaArray;
	{
		inAreaPos = getPos(_x);
		_flakPos = [inAreaPos, 50] call CBA_fnc_randPos;
		_flak = createVehicle ["ammo_ShipCannon_120mm_HE",[_flakPos],[],0,"CAN_COLLIDE"];
		_flak setDamage 1;
	 } forEach _inArea;
	sleep _flakSleep;
};