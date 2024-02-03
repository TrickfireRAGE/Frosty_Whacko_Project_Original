/// @description Music, Video and Level Timer code.

switch (room)
{
	case rm_trickfireStudios: // Using Shaun Spalding's Tutorial (THANK LORD HE EXISTS)
		video = video_open("vid_trickfireStudiosIntro.mp4"); 
		// From the video, this plays the video instantly ^ Putting it in memory.
		// However it will only showcase the audio
		// For Visuals we need to do them manually.
		video_enable_loop(false);
		video_set_volume(global.soundVolume);
		// This one is simple, does the video loop or not
		break;
		
	case rm_titleScreen:
		if (!audio_is_playing(snd_backgroundMusicShiru)) // Main Menu Music used throughout
		{
			audio_stop_all(); // Stops it all in case another room/level used a different track
			audio_play_sound(snd_backgroundMusicShiru, 0, 1);
		}
		break;
	case rm_settings:
		if (!audio_is_playing(snd_backgroundMusicShiru))
		{
			audio_stop_all();
			audio_play_sound(snd_backgroundMusicShiru, 0, 1);
		}
		break;
	case rm_credits: 
		audio_stop_all();
		audio_play_sound(snd_backgroundMusicRight, 0, 1);
		break;
	case rm_shopMenu:
		if (!audio_is_playing(snd_backgroundMusicShiru))
		{
			audio_stop_all();
			audio_play_sound(snd_backgroundMusicShiru, 0, 1);
		}
		break;
	case rm_level1_1:
		randomise(); // Randomises the seed so it won't be the same.
		audio_stop_all();
		audio_play_sound(snd_backgroundMusicRight, 0, 1);
		// ^^ Add code that will change the track depending on what the user has selected if time permits
		
		// Timer Code + Score Code
		levelTimer = 120 * room_speed;
		powerUpObjectCreation = 1; // Unique Variable needed for creation of objects
		finishedLevel = enumLevelFinished.notFinished; // Used to reset the stage everytime
		score = 0;
		fishScore = 0;
		sealNoFishCounter = 0;
		sealFishCounter = 0;
		ini_open("saveFile.ini");
		powerUpTT = ini_read_real(global.userNameString + "_Power_Ups", "Times_Two", enumPowerUps.notUnlocked);
		powerUpSD = ini_read_real(global.userNameString + "_Power_Ups", "Slow_Down", enumPowerUps.notUnlocked);
		ini_close();
		break;
	case rm_levelEndless:
		randomise(); // Randomises the Seed for the level so it isn't the same every time
		audio_stop_all();
		switch(endlessTrackSelection)
		{
			case (enumEndlessTracks.wrongToPolarBearArms):
				audio_play_sound(snd_backgroundMusicWrong, 0, 1);
				break;
			case (enumEndlessTracks.yourFateIsSealed):
				audio_play_sound(snd_backgroundMusicFate, 0, 1);
				break;
			case (enumEndlessTracks.rightToPolarBearArms):
				audio_play_sound(snd_backgroundMusicRight, 0, 1);
				break;
			case (enumEndlessTracks.beyondGekidoTheme):
				audio_play_sound(snd_backgroundMusicBeyond, 0, 1);
				break;
			case (enumEndlessTracks.infiniteInstrumental):
				audio_play_sound(snd_backgroundMusicInfiniteInstru, 0, 1);
				break;
		}
		// Timer Code + Score Code
		spawnTimer = 0;
		powerUpObjectCreation = 1; // Unique Variable needed for creation of objects
		finishedLevel = enumLevelFinished.notFinished; // Used to reset the stage everytime
		score = 0;
		fishScore = 0;
		sealNoFishCounter = 0;
		sealFishCounter = 0;
		sealBombCounter = 0;
		sealIceCounter = 0;
		ini_open("saveFile.ini");
		powerUpTT = ini_read_real(global.userNameString + "_Power_Ups", "Times_Two", enumPowerUps.notUnlocked);
		powerUpSD = ini_read_real(global.userNameString + "_Power_Ups", "Slow_Down", enumPowerUps.notUnlocked);
		ini_close();
		break;
	case rm_mainMenu:
		if (!audio_is_playing(snd_backgroundMusicShiru))
		{
			audio_stop_all();
			audio_play_sound(snd_backgroundMusicShiru, 0, 1);
		}
		break;
	case rm_levelSelection:
		if (!audio_is_playing(snd_backgroundMusicShiru))
		{
			audio_stop_all();
			audio_play_sound(snd_backgroundMusicShiru, 0, 1);
		}
		break;
}