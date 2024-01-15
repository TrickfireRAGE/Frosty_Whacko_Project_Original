/// @description Variable Creation/Loading of Configs

#region Save File Loading (Not finished

global.fish_wallet = 0; // Used for storing fish inbetween levels.
// Continue later

#endregion

#region Display Initialization

global.resolutionWidth = 480;
global.resolutionHeight = 320;

ini_open("userSettings.ini");
global.resolutionWidth = ini_read_real("resolution", "width", 0);
global.resolutionHeight = ini_read_real("resolution", "height", 0);
if (ini_read_real("resolution", "width", 0) == 0)
{
	ini_write_real("resolution", "width", 480);
}
if (ini_read_real("resolution", "height", 0) == 0)
{
	ini_write_real("resolution", "height", 320)
}
ini_close();

window_set_size(global.resolutionWidth, global.resolutionHeight);

#endregion