/// @description ???

ini_open("saveFile.ini");
userOneName = ini_read_string("User_One", "Name", 0);
userOneNameVerify = ini_read_real("User_One", "Verify", 0); // 0 == Yes, 1 == No
userOneFish = ini_read_real("User_One", "Fish", -1);
userOneNumber = ini_read_real("User_One", "User_Number", 0); // 0 if Nothing, 1,2,3 for Users.

if (userOneNameVerify == 0)
{
	ini_write_string("User_One", "Name", "Save_One");
	ini_write_real("User_One", "Fish", 0);
	ini_write_real("User_One", "Verify", 0);	
	ini_write_real("User_One", "User_Number", 1);
}

ini_close();
