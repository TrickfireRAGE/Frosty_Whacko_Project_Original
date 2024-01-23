/// @description 

event_inherited();

if (!instance_exists(obj_smallButtonFishS3))
{
	var _x = 192;
	var _y = 192;
	var _increase = 48;
	instance_create_layer(_x, _y, "Instances", obj_smallButtonFishS3);
	instance_create_layer(_x + _increase, _y, "Instances", obj_smallButtonS3Confirm);
	objIndexOne = obj_smallButtonFishS3.object_index;
	objIndexTwo = obj_smallButtonS3Confirm.object_index;
	exit;
}

if (instance_exists(obj_smallButtonFishS3))
{
	instance_destroy(objIndexOne);
	instance_destroy(objIndexTwo);
	exit;
}