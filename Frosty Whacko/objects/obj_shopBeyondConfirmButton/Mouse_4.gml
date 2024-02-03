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
	ini_write_real(global.userNameString + "_Sounds", "Beyond", true);
	ini_write_real(global.userNameString, "Fish", global.fishWallet - 1000);
	ini_write_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.beyondGekidoTheme);
	global.fishWallet -= 1000;
	audio_play_sound(snd_soundeffectButtonPress, 0, 0);
	obj_coreGame.endlessTrackBeyond = true;
	obj_coreGame.endlessTrackSelection = enumEndlessTracks.beyondGekidoTheme;
	ini_close();
	exit;
}



