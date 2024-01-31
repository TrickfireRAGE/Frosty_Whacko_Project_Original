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

enum enumLevelFinished
{
	notFinished = 0,
	finished = 1
}

enum enumPowerUps
{
	notUnlocked = -1,
	Unlocked = 0
}

enum enumPowerUpsActivation
{
	notActivated = 0,
	activated = 1
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

// Timers
spawnTimer = 0;
levelTimer = undefined; // Set on room start
timerSprite = 0; // Variable needed for animating the timer in Draw Event
finishedLevel = enumLevelFinished.notFinished; // Starts the level as not finished.

// Scores
score = 0; // Starts Score at Zero at the start of the game
fishScore = 0; // Starts Fish Score at Zero at the start of the game

// Power-Ups
powerUpTT = enumPowerUps.notUnlocked; // When not unlocked it will be -1
powerUpSD = enumPowerUps.notUnlocked; // Same as above.
activatedPowerUpTT = enumPowerUpsActivation.notActivated; // Used for checking if the power is activated
activatedPowerUpSD = enumPowerUpsActivation.notActivated; // ^ but for Slow Down
powerUpTTCountdown = 0;
powerUpSDCountdown = 0;


#endregion


