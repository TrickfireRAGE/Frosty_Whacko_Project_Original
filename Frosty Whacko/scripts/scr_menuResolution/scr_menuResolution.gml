// Function Below
function scr_menuResolution(_height, _fullScreen) // So it doesn't need to be repeated multiple times (Aspect Ratio is only 16/9 for Alpha build)
{
	if (_height == undefined) 
	// ^^ Needed for first iteration of the game, only checking height as if height is undefined, both will be undefined
	{
		ini_open("userSettings.ini");
		_height = ini_read_real("resolution", "height", 0);
		_fullScreen = ini_read_real("resolution", "fullscreen", 0);
		if (ini_read_real("resolution", "height", 0) == 0)
		{
			_height = 480; // Default Resolution is 480 X 270
		}
		if (ini_read_real("resolution", "fullscreen", -1) == -1) // Using minus 1 since 0 is used for off.
		{
			_fullScreen = 0; // Sets it to Zero which means off
		}
		ini_close();
	}
	var _width = _height * (16/9); // Calculates Width since the aspect ratio is 16:9, allows for further expansion in the future with a custom aspect ratio.
	global.resolutionHeight = _height;
	global.resolutionWidth = _width;
	global.fullScreen = _fullScreen;
	
	ini_open("userSettings.ini"); // Saving Settings for future launches of game
	ini_write_real("resolution", "width", global.resolutionWidth);
	ini_write_real("resolution", "height", global.resolutionHeight);
	ini_write_real("resolution", "fullscreen", global.fullScreen); // Writes the current fullscreen status
	window_set_size(global.resolutionWidth, global.resolutionHeight); // Sets Window to Selected or Saved Settings.
	surface_resize(application_surface, global.resolutionWidth, global.resolutionHeight); // Resizes so the image isn't distorted/pixelated.
	if (_fullScreen == 1) // If value is true, it will set it as fullscreen
	{
		window_set_fullscreen(true);
	}
	else if (!_fullScreen == 1) // If it isn't true, it will keep it windowed.
	{
		window_set_fullscreen(false);
	}
	ini_close();
	
}