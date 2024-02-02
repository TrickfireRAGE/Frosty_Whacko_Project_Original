/// @description 

event_inherited();

ini_open("saveFile.ini");
var _powerSD = ini_read_real(global.userNameString + "_Power_Ups", "Slow_Down", -1);
if (_powerSD == -1)
{
	_powerSD = 0;
}
ini_write_real(global.userNameString + "_Power_Ups", "Slow_Down", _powerSD + 1);
ini_write_real(global.userNameString, "Fish", global.fishWallet - 120);
global.fishWallet -= 120;
audio_play_sound(snd_soundeffectButtonPress, 0, 0);
ini_close();