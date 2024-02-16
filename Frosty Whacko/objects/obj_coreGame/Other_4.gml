/// @description Level Timer code.

switch (room)
{
	case rm_level1_1:
		randomise(); // Randomises the seed so it won't be the same.
		// Timer Code + Score Code
		levelTimer = 120 * room_speed;
		powerUpObjectCreation = 1; // Unique Variable needed for creation of objects
		finishedLevel = false; // Used to reset the stage everytime
		score = 0;
		fishScore = 0;
		sealNoFishCounter = 0;
		sealFishCounter = 0;
		ini_open("saveFile.ini");
		powerUpTT = ini_read_real(global.userNameString + "_Power_Ups", "Times_Two", enumPowerUps.notUnlocked);
		powerUpSD = ini_read_real(global.userNameString + "_Power_Ups", "Slow_Down", enumPowerUps.notUnlocked);
		ini_close();
		break;
	case rm_levelEndless:
		randomise(); // Randomises the Seed for the level so it isn't the same every time
		// Timer Code + Score Code
		spawnTimer = 0;
		powerUpObjectCreation = 1; // Unique Variable needed for creation of objects
		finishedLevel = false; // Used to reset the stage everytime
		score = 0;
		fishScore = 0;
		sealNoFishCounter = 0;
		sealFishCounter = 0;
		sealBombCounter = 0;
		sealIceCounter = 0;
		ini_open("saveFile.ini");
		powerUpTT = ini_read_real(global.userNameString + "_Power_Ups", "Times_Two", enumPowerUps.notUnlocked);
		powerUpSD = ini_read_real(global.userNameString + "_Power_Ups", "Slow_Down", enumPowerUps.notUnlocked);
		ini_close();
		break;
}