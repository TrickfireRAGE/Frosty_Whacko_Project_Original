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

	if (spawnTimer == (room_speed * 3) && finishedLevel == enumLevelFinished.notFinished)
	{
		scr_sealSpawnL1();
		spawnTimer = 0;
	}
	if (levelTimer <= 0 && finishedLevel == enumLevelFinished.notFinished)
	{
		alarm_set(1,1);
	}
	if (finishedLevel == enumLevelFinished.finished && (instance_exists(obj_sealEmpty) || instance_exists(obj_sealFish)))
	{
		instance_destroy(obj_sealEmpty);
		instance_destroy(obj_sealFish);
		
	}
	if (finishedLevel == enumLevelFinished.finished && !instance_exists(obj_resultsReturnButton))
	{
		instance_create_layer(282, 164, "UI_Layer", obj_resultsReturnButton);
		// Add victory music code here
	}
}

#endregion