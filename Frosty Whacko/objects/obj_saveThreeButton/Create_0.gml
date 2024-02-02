/// @description 

ini_open("saveFile.ini");
userThreeName = ini_read_string("User_Three", "Name", 0);
userThreeNameVerify = ini_read_real("User_Three", "Verify", 0); // 0 == Yes, 1 == No


if (userThreeNameVerify == 0)
{
	ini_write_string("User_Three", "Name", "Save_Three");
	ini_write_real("User_Three", "Fish", 0);
	ini_write_real("User_Three", "Verify", 0);	
	ini_write_real("User_Three", "User_Number", 3);
	ini_write_real("User_Three_Power_Ups", "Times_Two", enumPowerUps.notUnlocked);
	ini_write_real("User_Three_Power_Ups", "Slow_Down", enumPowerUps.notUnlocked);
}

ini_close();
