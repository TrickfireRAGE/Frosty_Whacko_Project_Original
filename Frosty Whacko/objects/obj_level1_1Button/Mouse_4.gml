/// @description 

var _userTracker
switch (global.userName)
{
	case (1):
		ini_open("saveFile.ini");
		_userTracker = ini_read_real("User_One_Score", "Level_1-1", -1);
		if (_userTracker = -1)
		{
			ini_write_real("User_One_Score", "Level_1-1", 0);
		}
		// Add code here to display like the Save System
		ini_close();
		break;
	case (2):
		ini_open("saveFile.ini");
		_userTracker = ini_read_real("User_Two_Score", "Level_1-1", -1);
		if (_userTracker = -1)
		{
			ini_write_real("User_Two_Score", "Level_1-1", 0);
		}
		// Add code here to display like the Save System
		ini_close();
		break;
	case (3):
		ini_open("saveFile.ini");
		_userTracker = ini_read_real("User_Three_Score", "Level_1-1", -1);
		if (_userTracker = -1)
		{
			ini_write_real("User_Three_Score", "Level_1-1", 0);
		}
		// Add code here to display like the Save System
		ini_close();
		break;		
}

room_goto(rm_level1_1);