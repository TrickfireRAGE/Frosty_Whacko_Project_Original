/// @description ???

ini_open("saveFile.ini");
userOneName = ini_read_string("User_One", "Name", 0);
userOneNameVerify = ini_read_real("User_One", "Verify", 0); // 0 == Yes, 1 == No


if (userOneNameVerify == 0)
{
	ini_write_string("User_One", "Name", "Save_One");
	ini_write_real("User_One", "Fish", 0);
	ini_write_real("User_One", "Verify", 0);	
	ini_write_real("User_One", "User_Number", 1);
	ini_write_real("User_One_Power_Ups", "Times_Two", enumPowerUps.notUnlocked);
	ini_write_real("User_One_Power_Ups", "Slow_Down", enumPowerUps.notUnlocked);
}

ini_close();
