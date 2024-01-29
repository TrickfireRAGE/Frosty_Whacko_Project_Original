/// @description ???

ini_open("saveFile.ini");
userTwoName = ini_read_string("User_Two", "Name", 0);
userTwoNameVerify = ini_read_real("User_Two", "Verify", 0); // 0 == Yes, 1 == No
userTwoFish = ini_read_real("User_Two", "Fish", -1);
userTwoNumber = ini_read_real("User_Two", "User_Number", 0); // 0 if Nothing, 1,2,3 for Users.

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
