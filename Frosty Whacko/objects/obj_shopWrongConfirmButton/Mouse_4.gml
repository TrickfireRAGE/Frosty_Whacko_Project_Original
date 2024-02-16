/// @description 

event_inherited();


ini_open("saveFile.ini");
obj_coreGame.endlessTrackSelection = enumEndlessTracks.wrongToPolarBearArms;	
ini_write_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.wrongToPolarBearArms);
ini_close();
exit;

	
