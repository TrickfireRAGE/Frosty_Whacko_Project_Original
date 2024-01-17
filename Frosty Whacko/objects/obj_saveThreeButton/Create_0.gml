/// @description ???

ini_open("saveFile.ini");
userThreeName = ini_read_string("User_Three", "Name", 0);
userThreeNameVerify = ini_read_real("User_Three", "Verify", 0); // 0 == Yes, 1 == No
userThreeFish = ini_read_real("User_Three", "Fish", -1);

if (userThreeNameVerify == 0)
{
	ini_write_string("User_Three", "Name", "Save_Three");
	ini_write_real("User_Three", "Fish", 0);
	ini_write_real("User_Three", "Verify", 0);	
}

ini_close();
