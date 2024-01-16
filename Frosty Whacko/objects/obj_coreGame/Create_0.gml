/// @description Variable Creation/Loading of Configs

#region Save File Loading (Not finished, create once settings are done)

global.fish_wallet = 0; // Used for storing fish inbetween levels.
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