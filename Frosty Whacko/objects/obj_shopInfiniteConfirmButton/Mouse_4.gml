/// @description 

event_inherited();

ini_open("saveFile.ini");

if (ini_read_real(global.userNameString + "_Sounds", "Infinite", false) == true)
{
	obj_coreGame.endlessTrackSelection = enumEndlessTracks.infiniteInstrumental;	
	ini_write_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.infiniteInstrumental);
	ini_close();
	exit;
}
	

if (ini_read_real(global.userNameString + "_Sounds", "Infinite", false) == false)
{
	var _price = 600;
	ini_write_real(global.userNameString + "_Sounds", "Infinite", true);
	ini_write_real(global.userNameString, "Fish", global.fishWallet - _price);
	ini_write_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.infiniteInstrumental);
	global.fishWallet -= _price;
	audio_play_sound(snd_soundeffectButtonPress, 0, 0);
	obj_coreGame.endlessTrackInfiniteIntru = true;
	obj_coreGame.endlessTrackSelection = enumEndlessTracks.infiniteInstrumental;
	ini_close();
	exit;
}



