/// @description 

if (!instance_exists(obj_smallButtonRes270P))
{
	var _x = 175;
	var _y = 32;
	var _increase = 64;
	instance_create_layer(_x, _y, "Instances", obj_smallButtonRes270P);
	instance_create_layer(_x + _increase, _y, "Instances", obj_smallButtonRes480P);
	instance_create_layer(_x + (_increase * 2), _y, "Instances", obj_smallButtonResHD);
	instance_create_layer(_x + (_increase * 3), _y, "Instances", obj_smallButtonResFHD);
}

