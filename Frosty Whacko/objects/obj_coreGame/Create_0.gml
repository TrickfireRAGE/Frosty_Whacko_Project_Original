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

enum enumLevelFinished // True or false would work instead.
{
	notFinished = 0,
	finished = 1
}

enum enumPowerUps
{
	notUnlocked = -1,
	Unlocked = 0
}

enum enumPowerUpsActivation // True or false would work instead.
{
	notActivated = 0,
	activated = 1
}

enum enumExplosionDebuff // This is an incorrect way of using Enums
{
	deactivated = -1,
	activated = 30 // 30 is used for the 30 frames this explosion will be drawn also enum needs to be a constant int
}

enum enumFreezeDebuff // This is an incorrect way of using enums
{
	deactivated = -1,
	activated = 300 // 300 is used for 5 seconds, as said above, enum needs to be constant so I can't use room speed.
}

enum enumEndlessTracks
{
	wrongToPolarBearArms = 0,
	yourFateIsSealed = 1,
	rightToPolarBearArms = 2,
	beyondGekidoTheme = 3, // Going to grab a track that I like to put into the game
	infiniteInstrumental = 4, // Cannot use outside of Education for Copyright Reasons!!
}

#endregion

#region Save File Loading (Not finished)

global.fishWallet = undefined; // Used for storing fish inbetween levels.
global.userNameString = undefined; // Used to reduce amounts of Switches within my code improving efficiency

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

#region Variables for Levels

// Timers
spawnTimer = 0;
levelTimer = undefined; // Set on room start
timerSprite = 0; // Variable needed for animating the timer in Draw Event
finishedLevel = enumLevelFinished.notFinished; // Starts the level as not finished.

// Scores
score = 0; // Starts Score at Zero at the start of the game
fishScore = 0; // Starts Fish Score at Zero at the start of the game
sealNoFishCounter = 0; // Counts how many seals have been whacked
sealFishCounter = 0;
sealBombCounter = 0;
sealIceCounter = 0;

// Power-Ups
powerUpTT = enumPowerUps.notUnlocked; // When not unlocked it will be -1
powerUpSD = enumPowerUps.notUnlocked; // Same as above.
activatedPowerUpTT = enumPowerUpsActivation.notActivated; // Used for checking if the power is activated
activatedPowerUpSD = enumPowerUpsActivation.notActivated; // ^ but for Slow Down
powerUpTTCountdown = 0;
powerUpSDCountdown = 0;

// De-Buffs
explosionCounter = enumExplosionDebuff.deactivated; 
freezeCounter = enumFreezeDebuff.deactivated;

// Endless Track Selection
endlessTrackSelection = enumEndlessTracks.wrongToPolarBearArms; // Default Track
endlessTrackWrong = true; // Unlocked by Default
endlessTrackFate = false; // All start at false for default
endlessTrackRight = false;
endlessTrackBeyond = false;
endlessTrackInfiniteIntru = false;


#endregion


