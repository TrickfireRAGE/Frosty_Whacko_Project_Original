/// @description 

event_inherited();

ini_open("saveFile.ini");
var _powerTT = ini_read_real(global.userNameString + "_Power_Ups", "Times_Two", -1);
if (_powerTT == -1)
{
	_powerTT = 0;
}
ini_write_real(global.userNameString + "_Power_Ups", "Times_Two", _powerTT + 1);
ini_write_real(global.userNameString, "Fish", global.fishWallet - 100);
global.fishWallet -= 100;
audio_play_sound(snd_soundeffectButtonPress, 0, 0);
ini_close();

