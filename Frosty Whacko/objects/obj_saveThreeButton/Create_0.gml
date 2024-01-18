/// @description ???

ini_open("saveFile.ini");
userThreeName = ini_read_string("User_Three", "Name", 0);
userThreeNameVerify = ini_read_real("User_Three", "Verify", 0); // 0 == Yes, 1 == No
userThreeFish = ini_read_real("User_Three", "Fish", -1);
userThreeNumber = ini_read_real("User_Three", "User_Number", 0); // 0 if Nothing, 1,2,3 for Users.

if (userThreeNameVerify == 0)
{
	ini_write_string("User_Three", "Name", "Save_Three");
	ini_write_real("User_Three", "Fish", 0);
	ini_write_real("User_Three", "Verify", 0);	
	ini_write_real("User_Three", "User_Number", 3);
}

ini_close();
