/// @description ???


event_inherited();

if (audio_is_playing(snd_backgroundMusicInfiniteInstru))
{
	image_blend = c_red;
}

if (!audio_is_playing(snd_backgroundMusicInfiniteInstru))
{
	image_blend = c_white;
}



