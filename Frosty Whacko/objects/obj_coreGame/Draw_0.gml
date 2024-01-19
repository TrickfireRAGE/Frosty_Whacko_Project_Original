/// @description 

#region Credits

if (room == rm_credits)
{
	draw_set_font(fnt_creditsFont);
	draw_text_transformed_colour(170, 115, 
		"FROSTY WHACKO" + // Reason the String was like this was due to the default character bug using @
		"\nProduced by Trickfire Studios" +
		"\nProgramming - Jonathon Lloyd-Jones" +
		"\nArtwork - Jonathon Lloyd-Jones" +
		"\nGame Design - Jonathon Lloyd-Jones" +
		"\n-------------------------------" +
		"\nExternal Assistance" +
		"\nMusic - The KAI Games" +
		"\nSound Effects Obtained from -"+ 
		"\nhttps://www.zapsplat.com", 0.70, 0.70, 0, c_grey, c_grey, c_grey, c_grey, 1);
}

#endregion

#region Intro (Trickfire Studios)

// Code again from the Video Tutorial from Shaun Spalding.
if (room == rm_trickfireStudios)
{
	var _videoData = video_draw(); //Processes the video
	var _videoStatus = _videoData[0];
	if (_videoStatus == 0) // If it is playing without error
	{
		// Draw durface that captured the current video frame
		draw_surface(_videoData[1], 0, 0);
	}
}

#endregion

#region Level Selection (Only needed for Prototype)

if (room == rm_levelSelection)
{
	draw_text_transformed(128, 244, "Disclaimer: This is a prototype." + "\nDisplayed Levels are the currently available gameplay areas.", 0.5, 0.5, 0);
}

#endregion

