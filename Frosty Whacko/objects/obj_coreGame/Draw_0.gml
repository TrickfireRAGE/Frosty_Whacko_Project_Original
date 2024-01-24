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

#region Main Menu

if (room == rm_mainMenu)
{
	draw_set_font(fnt_creditsFont);
	draw_text(172, 20, "MAIN MENU");
}

#endregion

#region Level Selection (Only needed for Prototype)

if (room == rm_levelSelection)
{
	draw_text_transformed(128, 244, "Disclaimer: This is a prototype." + "\nDisplayed Levels are the currently available gameplay areas.", 0.5, 0.5, 0);
}

#endregion

#region Level 1-1 (See if it is visable for other levels)

if (room == rm_level1_1)
{
	// Side UI
	draw_sprite(spr_button, 0, 40, 50);
	draw_text_transformed(30, 50, "SCORE: " + string(score), 0.6, 0.6, 0);
	draw_sprite(spr_button, 0, 40, 100);
	draw_sprite(spr_sealFish_strip16, 15, 15, 100);
	draw_text_transformed(40, 100, ": " + string(fishScore), 0.8, 0.8, 0);
	
	// Top UI
	draw_sprite_ext(spr_button, 0, 380, 10, 0.75, 0.75, 0, c_white, 1);
	draw_sprite_ext(spr_timer, 0, 350, 10, 0.4, 0.4, 0, c_white, 1);
	draw_text_transformed(385, 10, ": " + string(levelTimer / room_speed), 0.6, 0.6, 0);
	draw_sprite_ext(spr_button, 0, 465, 10, 0.75, 0.75, 0, c_white, 1);
	draw_text_transformed(452, 12, "LV| 1-1", 0.6, 0.75, 0);
}

#endregion

