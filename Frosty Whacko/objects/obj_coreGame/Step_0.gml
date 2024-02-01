/// @description 

#region Video Checker for Intro

if (room == rm_trickfireStudios)
{
	if (video_get_status() == video_status_closed)
	{
		room_goto(rm_titleScreen);
	}
}

#endregion

#region Spawning Test for Level 1-1 (Needs expansion)

if (room == rm_level1_1)
{
	spawnTimer++;
	levelTimer--; // Timer

	if (spawnTimer == (room_speed * 2) && finishedLevel == enumLevelFinished.notFinished)
	{
		scr_sealSpawnL1();
		spawnTimer = 0;
	}
	if (powerUpObjectCreation == 1)
	{
		instance_create_layer(37, 190, "UI_Layer", obj_powerUpOneButton);
		instance_create_layer(37, 240, "UI_Layer", obj_powerUpTwoButton);
		powerUpObjectCreation = 0;
	}
	if (levelTimer <= 0 && finishedLevel == enumLevelFinished.notFinished)
	{
		alarm_set(1,1);
	}
	if (finishedLevel == enumLevelFinished.finished && (instance_exists(obj_sealEmpty) || instance_exists(obj_sealFish)))
	{
		instance_destroy(obj_sealEmpty);
		instance_destroy(obj_sealFish);
		instance_destroy(obj_powerUpOneButton);
		instance_destroy(obj_powerUpTwoButton);
		instance_destroy(obj_levelExitButton);
		
	}
	if (finishedLevel == enumLevelFinished.finished && !instance_exists(obj_resultsReturnButton))
	{
		instance_create_layer(282, 164, "UI_Layer", obj_resultsReturnButton);
		audio_play_sound(snd_soundeffectVictory, 0, 0, 1.5); // Add code here for alternative options
	}
}

#endregion

#region Endless

if (room == rm_levelEndless)
{
	spawnTimer++;

	if (spawnTimer == (room_speed / 2) && finishedLevel == enumLevelFinished.notFinished)
	{
		scr_sealSpawnL1();
		spawnTimer = 0;
	}
	if (powerUpObjectCreation == 1)
	{
		instance_create_layer(37, 190, "UI_Layer", obj_powerUpOneButton);
		instance_create_layer(37, 240, "UI_Layer", obj_powerUpTwoButton);
		powerUpObjectCreation = 0;
	}
	if (levelTimer <= 0 && finishedLevel == enumLevelFinished.notFinished)
	{
		alarm_set(1,1);
	}
	if (finishedLevel == enumLevelFinished.finished && (instance_exists(obj_sealEmpty) || instance_exists(obj_sealFish) || instance_exists(obj_sealBomb) || instance_exists(obj_sealIce)))
	{
		instance_destroy(obj_sealEmpty);
		instance_destroy(obj_sealFish);
		instance_destroy(obj_sealBomb);
		instance_destroy(obj_sealIce);
		
		// These don't need to change due to their universal design.
		instance_destroy(obj_powerUpOneButton);
		instance_destroy(obj_powerUpTwoButton);
		instance_destroy(obj_levelEndlessExitButton);
		
	}
	if (finishedLevel == enumLevelFinished.finished && !instance_exists(obj_resultsEndlessReturnButton))
	{
		instance_create_layer(282, 164, "UI_Layer", obj_resultsEndlessReturnButton);
		audio_play_sound(snd_soundeffectVictory, 0, 0, 1.5); // Add code here for alternative options
	}
}

#endregion