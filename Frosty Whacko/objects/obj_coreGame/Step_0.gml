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

	if (spawnTimer == (room_speed * 2))
	{
		scr_sealSpawnL1();
		spawnTimer = 0;
	}
}

#endregion