/// @description 

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
	// add new track if I get any
		break;
	case rm_level1_1:
		audio_stop_all();
		audio_play_sound(snd_backgroundMusicRight, 0, 1);
		// ^^ Add code that will change the track depending on what the user has selected if time permits
		
		// Timer Code
		levelTimer = 120 * room_speed;
		break;
}