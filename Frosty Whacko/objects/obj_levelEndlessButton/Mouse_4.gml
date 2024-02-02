/// @description 

event_inherited();

var _userTracker = undefined;

if (!instance_exists(obj_smallButtonEndlessScore))
{
	ini_open("saveFile.ini");
	_userTracker = ini_read_real(global.userNameString + "_Score", "Endless", -1);
	if (_userTracker = -1)
	{
		ini_write_real(global.userNameString + "_Score", "Endless", 0);
	}
	instance_create_layer(350, 128, "Instances", obj_smallButtonEndlessScore);
	instance_create_layer(450, 122, "Instances", obj_smallButtonEndlessConfirm, {image_xscale: 1.5, image_yscale: 1.5});
	// ^ Final part of the create layer allows for custom variables, in this instance, scaling the image.
	objIndexOne = obj_smallButtonEndlessScore.object_index;
	objIndexTwo = obj_smallButtonEndlessConfirm.object_index;
	ini_close();
	exit;
}

if (instance_exists(obj_smallButtonEndlessScore))
{
	instance_destroy(objIndexOne);
	instance_destroy(objIndexTwo);
	exit;
}