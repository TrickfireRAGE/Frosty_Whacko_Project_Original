/// @description 

if (!instance_exists(obj_smallButtonSnd25))
{
	var _x = 175;
	var _y = 160;
	var _increase = 64;
	instance_create_layer(_x, _y, "Instances", obj_smallButtonSnd25);
	instance_create_layer(_x + _increase, _y, "Instances", obj_smallButtonSnd50);
	instance_create_layer(_x + (_increase * 2), _y, "Instances", obj_smallButtonSnd75);
	instance_create_layer(_x + (_increase * 3), _y, "Instances", obj_smallButtonSndMAX);
}

