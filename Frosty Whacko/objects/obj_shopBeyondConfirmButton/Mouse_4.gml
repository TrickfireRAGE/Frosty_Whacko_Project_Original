/// @description 

event_inherited();

ini_open("saveFile.ini");

if (ini_read_real(global.userNameString + "_Sounds", "Beyond", false) == true)
{
	obj_coreGame.endlessTrackSelection = enumEndlessTracks.beyondGekidoTheme;
	ini_write_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.beyondGekidoTheme);
	ini_close();
	exit;
}
	

if (ini_read_real(global.userNameString + "_Sounds", "Beyond", false) == false)
{
	var _price = 500;
	ini_write_real(global.userNameString + "_Sounds", "Beyond", true);
	ini_write_real(global.userNameString, "Fish", global.fishWallet - _price);
	ini_write_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.beyondGekidoTheme);
	global.fishWallet -= _price;
	audio_play_sound(snd_soundeffectButtonPress, 0, 0);
	obj_coreGame.endlessTrackBeyond = true;
	obj_coreGame.endlessTrackSelection = enumEndlessTracks.beyondGekidoTheme;
	ini_close();
	exit;
}



