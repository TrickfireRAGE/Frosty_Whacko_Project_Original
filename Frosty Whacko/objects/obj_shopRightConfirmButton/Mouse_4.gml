/// @description 

event_inherited();

ini_open("saveFile.ini");

if (ini_read_real(global.userNameString + "_Sounds", "Right_To_Polar_Bear_Arms", false) == true)
{
	obj_coreGame.endlessTrackSelection = enumEndlessTracks.rightToPolarBearArms;	
	ini_write_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.rightToPolarBearArms);
	ini_close();
	exit;
}
	

if (ini_read_real(global.userNameString + "_Sounds", "Right_To_Polar_Bear_Arms", false) == false)
{
	ini_write_real(global.userNameString + "_Sounds", "Right_To_Polar_Bear_Arms", true);
	ini_write_real(global.userNameString, "Fish", global.fishWallet - 150);
	ini_write_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.rightToPolarBearArms);
	global.fishWallet -= 150;
	audio_play_sound(snd_soundeffectButtonPress, 0, 0);
	obj_coreGame.endlessTrackRight = true;
	obj_coreGame.endlessTrackSelection = enumEndlessTracks.rightToPolarBearArms;
	ini_close();
	exit;
}



