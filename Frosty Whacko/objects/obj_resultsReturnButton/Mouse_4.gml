/// @description 

event_inherited();
var _levelFish = undefined;
var _levelScore = score;
with (obj_coreGame)
{
	_levelFish = fishScore;
}

switch(global.userName)
{
	case (1):
		ini_open("saveFile.ini");
		var _fish = ini_read_real("User_One", "Fish", 0);
		ini_write_real("User_One", "Fish", (_levelFish + _fish));
		global.fishWallet = ini_read_real("User_One", "Fish", 0);
		var _score = ini_read_real("User_One_Score", "Level_1-1", 0);
		if (_score < _levelScore)
		{
			ini_write_real("User_One_Score", "Level_1-1", _levelScore);
		}
		ini_close();
		break;
	case (2):
		ini_open("saveFile.ini");
		var _fish = ini_read_real("User_Two", "Fish", 0);
		ini_write_real("User_Two", "Fish", (_levelFish + _fish));
		global.fishWallet = ini_read_real("User_Two", "Fish", 0);
		var _score = ini_read_real("User_Two_Score", "Level_1-1", 0);
		if (_score < _levelScore)
		{
			ini_write_real("User_Two_Score", "Level_1-1", _levelScore);
		}
		ini_close();
		break;
	case (3):
		ini_open("saveFile.ini");
		var _fish = ini_read_real("User_Three", "Fish", 0);
		ini_write_real("User_Three", "Fish", (_levelFish + _fish));
		global.fishWallet = ini_read_real("User_Three", "Fish", 0);
		var _score = ini_read_real("User_Three_Score", "Level_1-1", 0);
		if (_score < _levelScore)
		{
			ini_write_real("User_Three_Score", "Level_1-1", _levelScore);
		}
		ini_close();
		break;
}		

if (!(score == 0))
{
	score = 0;
	fishScore = 0;
}

room_goto(rm_mainMenu);