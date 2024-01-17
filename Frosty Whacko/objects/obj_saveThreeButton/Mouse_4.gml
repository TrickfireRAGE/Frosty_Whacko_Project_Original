/// @description 

/*if (userThreeNameVerify == 0)
{
	ini_open("saveFile.ini");
	ini_write_string("User_Three", "Name", "Save_Three");
	ini_write_real("User_Three", "Fish", 0);
	ini_write_real("User_Three", "Verify", 1);
	global.fishWallet = 0;
	global.userName = ini_read_string("User_Three", "Name", 0);
	ini_close();
	
	room_goto(rm_mainMenu);
}

if (userThreeNameVerify == 1)
{
	global.fishWallet = userThreeFish;
	global.userName = userThreeName;
	
	room_goto(rm_mainMenu);
} */

if (!instance_exists(obj_smallButtonFish))
{
	var _x = 192;
	var _y = 192;
	var _increase = 48;
	instance_create_layer(_x, _y, "Instances", obj_smallButtonFish);
	// instance_create_layer(_x + _increase, _y, "Instances", obj_smallButtonContinue);
}

