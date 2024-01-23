/// @description Variable Creation/Loading of Configs

#region Enumerations (Not done, do this in the next patch)

enum enumFullScreen
{
	windowed = 0,
	fullScreen = 1
}

enum enumShopQuote
{
	quote = 0,
	scale = 1
}

#endregion

#region Save File Loading (Not finished)

global.fishWallet = undefined; // Used for storing fish inbetween levels.
global.userName = undefined; // Used to check which save it is.

#endregion


#region Display Initialization

global.resolutionWidth = undefined;
global.resolutionHeight = undefined;
global.fullScreen = undefined;
global.soundVolume = undefined;

scr_menuResolution(global.resolutionHeight, global.fullScreen);

#endregion

#region Sound Initialization

global.soundVolume = undefined;

scr_menuSound(global.soundVolume);

#endregion

#region Variable Room Checking

global.returnSettings = undefined;

#endregion

#region Timer for Levels

spawnTimer = 0;
LevelTimer = undefined; // Set on room start

#endregion


