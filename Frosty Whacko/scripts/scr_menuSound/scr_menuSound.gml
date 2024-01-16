// Function Below 
function scr_menuSound(_soundVolume)
{
	if (_soundVolume == undefined) // For at the start of the game at first bootup
	{
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
	audio_master_gain(global.soundVolume); // Sets the audio to the variable.
	ini_close();
}