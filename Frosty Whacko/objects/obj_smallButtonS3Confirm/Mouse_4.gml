/// @description 

event_inherited();

with(obj_saveThreeButton)
{
	ini_open("saveFile.ini");
	if (userThreeNameVerify == 0)
	{
		ini_write_real("User_Three", "Verify", 1);
	}
	global.userNameString = "User_Three";
	global.fishWallet = ini_read_real("User_Three", "Fish", -1);
	with (obj_coreGame)
	{
		endlessTrackSelection = ini_read_real(global.userNameString + "_Sounds", "Track_Selection", enumEndlessTracks.wrongToPolarBearArms);
		endlessTrackWrong = ini_read_real(global.userNameString + "_Sounds", "Wrong_To_Polar_Bear_Arms", true);
		endlessTrackFate = ini_read_real(global.userNameString + "_Sounds", "Your_Fate_Is_SEALED", false);
		endlessTrackRight = ini_read_real(global.userNameString + "_Sounds", "Right_To_Polar_Bear_Arms", false);
		endlessTrackBeyond = ini_read_real(global.userNameString + "_Sounds", "Beyond", false);
		endlessTrackInfiniteIntru = ini_read_real(global.userNameString + "_Sounds", "Infinite", false); // CopyRighted
	}
	ini_close();
}

room_goto(rm_mainMenu);
