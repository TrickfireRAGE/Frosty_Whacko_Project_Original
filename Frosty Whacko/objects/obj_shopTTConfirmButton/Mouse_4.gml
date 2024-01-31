/// @description 

event_inherited();

ini_open("saveFile.ini");
switch(global.userName)
{
	case (1):
		var _powerTT = ini_read_real("User_One_Power_Ups", "Times_Two", -1);
		if (_powerTT == -1)
		{
			_powerTT = 0;
		}
		ini_write_real("User_One_Power_Ups", "Times_Two", _powerTT + 1);
		ini_write_real("User_One", "Fish", global.fishWallet - 100);
		global.fishWallet -= 100;
		break;
	case (2):
		var _powerTT = ini_read_real("User_Two_Power_Ups", "Times_Two", -1);
		if (_powerTT == -1)
		{
			_powerTT = 0;
		}
		ini_write_real("User_Two_Power_Ups", "Times_Two", _powerTT + 1);
		ini_write_real("User_Two", "Fish", global.fishWallet - 100);
		global.fishWallet -= 100;
		break;
	case (3):
		var _powerTT = ini_read_real("User_Three_Power_Ups", "Times_Two", -1);
		if (_powerTT == -1)
		{
			_powerTT = 0;
		}
		ini_write_real("User_Three_Power_Ups", "Times_Two", _powerTT + 1);
		ini_write_real("User_Three", "Fish", global.fishWallet - 100);
		global.fishWallet -= 100;
		break;
}

audio_play_sound(snd_soundeffectButtonPress, 0, 0);
ini_close();

