/// @description 

if (!instance_exists(obj_smallButtonFishS1))
{
	var _x = 192;
	var _y = 62;
	var _increase = 48;
	instance_create_layer(_x, _y, "Instances", obj_smallButtonFishS1);
	instance_create_layer(_x + _increase, _y, "Instances", obj_smallButtonS1Confirm);
}

