// Function Below 
function scr_menuSound(_soundVolume)
{
	if (_soundVolume == undefined) // For at the start of the game at first bootup
	{
		audio_group_load(audio_groupMusic);
		audio_group_load(audio_groupSoundEffects);
		audio_group_load(audio_groupVoiceActing);
		ini_open("userSettings.ini");
		_soundVolume = ini_read_real("sound", "master", -1);
		if (ini_read_real("sound", "master", -1) == -1)
		{ 
			_soundVolume = 1
		}
		ini_close();
	}
	
	global.soundVolume = _soundVolume;
	ini_open("userSettings.ini");
	ini_write_real("sound", "master", global.soundVolume); 
	//audio_master_gain(global.soundVolume); // Sets the audio to the variable.
	audio_group_set_gain(audio_groupMusic, (global.soundVolume / 3), 0); // Halfing the Music doesn't make it too overpowering.
	audio_group_set_gain(audio_groupSoundEffects, global.soundVolume, 0);
	audio_group_set_gain(audio_groupVoiceActing, global.soundVolume, 0);
	ini_close();
}