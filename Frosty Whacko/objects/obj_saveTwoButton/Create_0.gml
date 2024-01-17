/// @description ???

ini_open("saveFile.ini");
userTwoName = ini_read_string("User_Two", "Name", 0);
userTwoNameVerify = ini_read_real("User_Two", "Verify", 0); // 0 == Yes, 1 == No
userTwoFish = ini_read_real("User_Two", "Fish", -1);
ini_close();
