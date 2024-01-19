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