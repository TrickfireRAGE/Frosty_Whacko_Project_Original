/// @description 

event_inherited();

ini_open("saveFile.ini");

if (ini_read_real(global.userNameString + "_Sounds", "Your_Fate_Is_SEALED", false) == true)
{
	obj_coreGame.endlessTrackSelection = enumEndlessTracks.yourFateIsSealed;	
	ini_write_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.yourFateIsSealed);
	ini_close();
	exit;
}
	

if (ini_read_real(global.userNameString + "_Sounds", "Your_Fate_Is_SEALED", false) == false)
{
	ini_write_real(global.userNameString + "_Sounds", "Your_Fate_Is_SEALED", true);
	ini_write_real(global.userNameString, "Fish", global.fishWallet - 300);
	ini_write_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.yourFateIsSealed);
	global.fishWallet -= 300;
	audio_play_sound(snd_soundeffectButtonPress, 0, 0);
	obj_coreGame.endlessTrackFate = true;
	obj_coreGame.endlessTrackSelection = enumEndlessTracks.yourFateIsSealed;
	ini_close();
	exit;
}



