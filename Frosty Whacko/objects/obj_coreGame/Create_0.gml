/// @description Variable Creation/Loading of Configs

#region Save File Loading (Not finished, create once settings are done)

global.fishWallet = undefined; // Used for storing fish inbetween levels.
global.userName = undefined; // Used to check which save it is.
// Continue later

#endregion

#region Display Initialization

global.resolutionWidth = undefined;
global.resolutionHeight = undefined;
global.fullScreen = undefined;
global.soundVolume = undefined;

scr_menuResolution(global.resolutionHeight, global.fullScreen);
scr_menuSound(global.soundVolume);

#endregion

#region Variable Room Checking

global.returnSettings = undefined;

#endregion