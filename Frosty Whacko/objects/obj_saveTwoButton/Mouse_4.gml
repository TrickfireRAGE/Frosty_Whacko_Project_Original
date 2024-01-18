/// @description 

if (!instance_exists(obj_smallButtonFishS2))
{
	var _x = 192;
	var _y = 128;
	var _increase = 48;
	instance_create_layer(_x, _y, "Instances", obj_smallButtonFishS2);
	instance_create_layer(_x + _increase, _y, "Instances", obj_smallButtonS2Confirm);
}

