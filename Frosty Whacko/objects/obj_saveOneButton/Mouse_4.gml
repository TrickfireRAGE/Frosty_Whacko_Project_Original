/// @description 

if (userOneNameVerify == 0)
{
	ini_open("saveFile.ini");
	ini_write_string("User_One", "Name", "Save_One");
	ini_write_real("User_One", "Fish", 0);
	ini_write_real("User_One", "Verify", 1);
	global.fishWallet = 0;
	global.userName = ini_read_string("User_One", "Name", 0);
	ini_close();
	
	room_goto(rm_mainMenu);
}

if (userOneNameVerify == 1)
{
	global.fishWallet = userOneFish;
	global.userName = userOneName;
	
	room_goto(rm_mainMenu);
}



