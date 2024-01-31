/// @description 

event_inherited();

ini_open("saveFile.ini");
switch(global.userName)
{
	case (1):
		var _powerSD = ini_read_real("User_One_Power_Ups", "Slow_Down", -1);
		if (_powerSD == -1)
		{
			_powerSD = 0;
		}
		ini_write_real("User_One_Power_Ups", "Slow_Down", _powerSD + 1);
		ini_write_real("User_One", "Fish", global.fishWallet - 120);
		global.fishWallet -= 120;
		break;
	case (2):
		var _powerSD = ini_read_real("User_Two_Power_Ups", "Slow_Down", -1);
		if (_powerSD == -1)
		{
			_powerSD = 0;
		}
		ini_write_real("User_Two_Power_Ups", "Slow_Down", _powerSD + 1);
		ini_write_real("User_Two", "Fish", global.fishWallet - 120);
		global.fishWallet -= 120;
		break;
	case (3):
		var _powerSD = ini_read_real("User_Three_Power_Ups", "Slow_Down", -1);
		if (_powerSD == -1)
		{
			_powerSD = 0;
		}
		ini_write_real("User_Three_Power_Ups", "Slow_Down", _powerSD + 1);
		ini_write_real("User_Three", "Fish", global.fishWallet - 120);
		global.fishWallet -= 120;
		break;
}

audio_play_sound(snd_soundeffectButtonPress, 0, 0);
ini_close();