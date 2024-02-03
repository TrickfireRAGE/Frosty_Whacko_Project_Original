/// @description ???


event_inherited();

if (audio_is_playing(snd_backgroundMusicFate))
{
	image_blend = c_red;
}

if (!audio_is_playing(snd_backgroundMusicFate))
{
	image_blend = c_white;
}



