/// @description 

event_inherited();

var _userTracker = undefined;

if (!instance_exists(obj_smallButtonL1_1Score)) // Revamped to reduce reliance on switches
{
	ini_open("saveFile.ini");
	_userTracker = ini_read_real(global.userNameString + "_Score", "Level_1-1", -1);
	if (_userTracker = -1)
	{
		ini_write_real(global.userNameString + "_Score", "Level_1-1", 0);
	}
	instance_create_layer(240, 48, "Instances", obj_smallButtonL1_1Score);
	instance_create_layer(340, 42, "Instances", obj_smallButtonL1_1Confirm, {image_xscale: 1.5, image_yscale: 1.5});
	// ^ Final part of the create layer allows for custom variables, in this instance, scaling the image.
	objIndexOne = obj_smallButtonL1_1Score.object_index;
	objIndexTwo = obj_smallButtonL1_1Confirm.object_index;
	ini_close();
	exit;
}

if (instance_exists(obj_smallButtonL1_1Score))
{
	instance_destroy(objIndexOne);
	instance_destroy(objIndexTwo);
	exit;
}