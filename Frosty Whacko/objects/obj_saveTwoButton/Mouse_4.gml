/// @description 

if (userTwoNameVerify == 0)
{
	ini_open("saveFile.ini");
	ini_write_string("User_Two", "Name", "Save_Two");
	ini_write_real("User_Two", "Fish", 0);
	ini_write_real("User_Two", "Verify", 1);
	global.fishWallet = 0;
	global.userName = ini_read_string("User_Two", "Name", 0);
	ini_close();
	
	room_goto(rm_mainMenu);
}

if (userTwoNameVerify == 1)
{
	global.fishWallet = userTwoFish;
	global.userName = userTwoName;
	
	room_goto(rm_mainMenu);
}



