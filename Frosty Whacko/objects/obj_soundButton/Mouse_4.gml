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
	objIndexOne = obj_smallButtonSnd25.object_index;
	objIndexTwo = obj_smallButtonSnd50.object_index;
	objIndexThree = obj_smallButtonSnd75.object_index;
	objIndexFour = obj_smallButtonSndMAX.object_index;
	exit;
}

if (instance_exists(obj_smallButtonSnd25)) // Used to get rid of the buttons upon second press.
{
	instance_destroy(objIndexOne);
	instance_destroy(objIndexTwo);
	instance_destroy(objIndexThree);
	instance_destroy(objIndexFour);
	exit; // THIS IS VERY IMPORTANT. Stops code respawning buttons immediately.
}