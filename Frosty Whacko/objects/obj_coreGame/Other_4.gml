/// @description 

switch (room)
{
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
		
}