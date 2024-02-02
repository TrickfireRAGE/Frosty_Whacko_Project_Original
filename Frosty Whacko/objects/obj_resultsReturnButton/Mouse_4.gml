/// @description 

event_inherited();
var _levelFish = undefined;
var _levelScore = score;
with (obj_coreGame)
{
	_levelFish = fishScore;
}

ini_open("saveFile.ini");
var _fish = ini_read_real(global.userNameString, "Fish", 0);
ini_write_real(global.userNameString, "Fish", (_levelFish + _fish));
ini_write_real(global.userNameString + "_Power_Ups", "Times_Two", obj_coreGame.powerUpTT);
ini_write_real(global.userNameString + "_Power_Ups", "Slow_Down", obj_coreGame.powerUpSD); // To update the power ups to get them used
global.fishWallet = ini_read_real(global.userNameString, "Fish", 0);
var _score = ini_read_real(global.userNameString + "_Score", "Level_1-1", 0);
if (_score < _levelScore)
{
	ini_write_real(global.userNameString + "_Score", "Level_1-1", _levelScore);
}
ini_close();


if (!(score == 0))
{
	score = 0;
	fishScore = 0;
}

room_goto(rm_mainMenu);