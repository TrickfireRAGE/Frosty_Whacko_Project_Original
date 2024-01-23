/// @description 

event_inherited();

if (!instance_exists(obj_fullscreenButton))
{
	var _x = 215;
	var _y = 96;
	var _increase = 128;
	instance_create_layer(_x, _y, "Instances", obj_windowedButton);
	instance_create_layer(_x + _increase, _y, "Instances", obj_fullscreenButton);
	objIndexOne = obj_windowedButton.object_index;
	objIndexTwo = obj_fullscreenButton.object_index;
	exit;
}

if (instance_exists(obj_fullscreenButton))
{
	instance_destroy(objIndexOne);
	instance_destroy(objIndexTwo);
	exit;
}