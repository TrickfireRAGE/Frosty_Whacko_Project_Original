/// @description 

event_inherited();

with(obj_saveThreeButton)
{
	ini_open("saveFile.ini");
	if (userThreeNameVerify == 0)
	{
		ini_write_real("User_Three", "Verify", 1);
	}
	global.userNameString = "User_Three";
	// global.userName = ini_read_real("User_Three", "User_Number", 0); // Testing Purposes
	global.fishWallet = ini_read_real("User_Three", "Fish", -1);
	ini_close();
}

room_goto(rm_mainMenu);
