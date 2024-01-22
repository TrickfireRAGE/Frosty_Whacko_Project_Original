/// @description 

if (!instance_exists(obj_smallButtonFishS1))
{
	var _x = 192;
	var _y = 62;
	var _increase = 48;
	instance_create_layer(_x, _y, "Instances", obj_smallButtonFishS1);
	instance_create_layer(_x + _increase, _y, "Instances", obj_smallButtonS1Confirm);
	objIndexOne = obj_smallButtonFishS1.object_index;
	objIndexTwo = obj_smallButtonS1Confirm.object_index;
	exit;
}

if (instance_exists(obj_smallButtonFishS1))
{
	instance_destroy(objIndexOne);
	instance_destroy(objIndexTwo);
	exit;
}