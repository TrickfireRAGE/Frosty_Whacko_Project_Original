/// @description 

event_inherited();

with(obj_saveTwoButton)
{
	ini_open("saveFile.ini");
	if (userTwoNameVerify == 0)
	{
		ini_write_real("User_Two", "Verify", 1);
	}
	global.userNameString = "User_Two";
	// global.userName = ini_read_real("User_Two", "User_Number", 0); // Commented out for testing purposes
	global.fishWallet = ini_read_real("User_Two", "Fish", -1);
	ini_close();
}

room_goto(rm_mainMenu);
