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

enum enumPowerUps
{
	notUnlocked = -1,
	Unlocked = 0
}

enum enumExplosionDebuff // This is an incorrect way of using Enums rework this.
{
	deactivated = -1,
	activated = 30 // 30 is used for the 30 frames this explosion will be drawn also enum needs to be a constant int
}

enum enumFreezeDebuff // This is an incorrect way of using enums, rework this.
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
}

#endregion

#region Save File Loading (Not finished)

global.fishWallet = "NOT_SET"; // Used for storing fish inbetween levels.
global.userNameString = "NOT_SET"; // Used to reduce amounts of Switches within my code improving efficiency

#endregion


#region Display Initialization

global.resolutionWidth = "NOT_SET";
global.resolutionHeight = "NOT_SET";
global.fullScreen = "NOT_SET";
global.soundVolume = "NOT_SET";

scr_menuResolution(global.resolutionHeight, global.fullScreen);

#endregion

#region Sound Initialization

global.soundVolume = "NOT_SET";

scr_menuSound(global.soundVolume);

#endregion

#region Variable Room Checking

global.returnSettings = "NOT_SET";

#endregion

#region Variables for Levels

var defVariable = 0;

// Timers
spawnTimer = defVariable;
levelTimer = "NOT_SET"; // Set on room start
timerSprite = defVariable; // Variable needed for animating the timer in Draw Event
finishedLevel = false; // Starts the level as not finished.

// Scores
score = defVariable; // Starts Score at Zero at the start of the game
fishScore = defVariable; // Starts Fish Score at Zero at the start of the game
sealNoFishCounter = defVariable; // Counts how many seals have been whacked
sealFishCounter = defVariable;
sealBombCounter = defVariable;
sealIceCounter = defVariable;

// Power-Ups
powerUpTT = enumPowerUps.notUnlocked; // When not unlocked it will be -1
powerUpSD = enumPowerUps.notUnlocked; // Same as above.
activatedPowerUpTT = false; // Used for checking if the power is activated
activatedPowerUpSD = false; // ^ but for Slow Down
powerUpTTCountdown = defVariable;
powerUpSDCountdown = defVariable;

// De-Buffs
explosionCounter = enumExplosionDebuff.deactivated; 
freezeCounter = enumFreezeDebuff.deactivated;

// Endless Track Selection
endlessTrackSelection = enumEndlessTracks.wrongToPolarBearArms; // Default Track
endlessTrackWrong = true; // Unlocked by Default
endlessTrackFate = false; // All start at false for default
endlessTrackRight = false;
endlessTrackBeyond = false;


#endregion


