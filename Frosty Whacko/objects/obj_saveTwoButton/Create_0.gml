/// @description ???

ini_open("saveFile.ini");
userTwoName = ini_read_string("User_Two", "Name", 0);
userTwoNameVerify = ini_read_real("User_Two", "Verify", 0); // 0 == Yes, 1 == No

if (userTwoNameVerify == 0)
{
	ini_write_string("User_Two", "Name", "Save_Two");
	ini_write_real("User_Two", "Fish", 0);
	ini_write_real("User_Two", "Verify", 0);	
	ini_write_real("User_Two", "User_Number", 2);
	ini_write_real("User_Two_Power_Ups", "Times_Two", enumPowerUps.notUnlocked);
	ini_write_real("User_Two_Power_Ups", "Slow_Down", enumPowerUps.notUnlocked);
}

ini_close();
