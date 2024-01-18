/// @description 
with(obj_saveOneButton)
{
	ini_open("saveFile.ini");
	if (userOneNameVerify == 0)
	{
		ini_write_real("User_One", "Verify", 1);
	}
	global.userName = ini_read_real("User_One", "User_Number", 0);
	global.fishWallet = ini_read_real("User_One", "Fish", -1);
	ini_close();
}

room_goto(rm_mainMenu);
