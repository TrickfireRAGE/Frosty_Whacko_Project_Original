/// @description 

event_inherited();

if (!instance_exists(obj_smallButtonRes480P)) 
{
	var _x = 175;
	var _y = 32;
	var _increase = 64;
	instance_create_layer(_x, _y, "Instances", obj_smallButtonRes480P);
	instance_create_layer(_x + _increase, _y, "Instances", obj_smallButtonResHD);
	instance_create_layer(_x + (_increase * 2), _y, "Instances", obj_smallButtonResFHD);
	instance_create_layer(_x + (_increase * 3), _y, "Instances", obj_smallButtonResUHD);
	objIndexOne = obj_smallButtonRes480P.object_index;
	objIndexTwo = obj_smallButtonResHD.object_index;
	objIndexThree = obj_smallButtonResFHD.object_index;
	objIndexFour = obj_smallButtonResUHD.object_index;
	exit; // IMPORTANT, needed to stop code destroying buttons right away.
}

if (instance_exists(obj_smallButtonRes480P)) // Used to get rid of the buttons upon second press.
{
	instance_destroy(objIndexOne);
	instance_destroy(objIndexTwo);
	instance_destroy(objIndexThree);
	instance_destroy(objIndexFour);
	exit; // THIS IS VERY IMPORTANT. Stops code respawning buttons immediately.
}

