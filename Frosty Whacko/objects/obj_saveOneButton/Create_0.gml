/// @description ???

ini_open("saveFile.ini");
userOneName = ini_read_string("User_One", "Name", 0);
userOneNameVerify = ini_read_real("User_One", "Verify", 0); // 0 == Yes, 1 == No
userOneFish = ini_read_real("User_One", "Fish", -1);
ini_close();
