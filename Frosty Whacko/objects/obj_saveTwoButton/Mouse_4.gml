/// @description 

event_inherited();

if (!instance_exists(obj_smallButtonFishS2))
{
	var _x = 192;
	var _y = 128;
	var _increase = 48;
	instance_create_layer(_x, _y, "Instances", obj_smallButtonFishS2);
	instance_create_layer(_x + _increase, _y, "Instances", obj_smallButtonS2Confirm);
	objIndexOne = obj_smallButtonFishS2.object_index;
	objIndexTwo = obj_smallButtonS2Confirm.object_index;
	exit;
}

if (instance_exists(obj_smallButtonS2Confirm))
{
	instance_destroy(objIndexOne);
	instance_destroy(objIndexTwo);
	exit;
}
