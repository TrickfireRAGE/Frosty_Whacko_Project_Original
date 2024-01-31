/// @description 

#region Credits

if (room == rm_credits)
{
	draw_set_font(fnt_creditsFont);
	draw_set_halign(fa_left);
	draw_text_transformed_colour(20, 115, 
		"FROSTY WHACKO" + // Reason the String was like this was due to the default character bug using @
		"\nProduced by Trickfire Studios" +
		"\nProgramming - Jonathon Lloyd-Jones" +
		"\nArtwork - Jonathon Lloyd-Jones" +
		"\nGame Design - Jonathon Lloyd-Jones" +
		"\n-------------------------------" +
		"\nExternal Assistance" +
		"\nMusic - The KAI Games" +
		"\nSound Effects Obtained from -" + 
		"\nhttps://www.zapsplat.com" +
		"\nGame Engine - GameMaker Studio 2 LTS", 0.70, 0.70, 0, c_grey, c_grey, c_grey, c_grey, 1);
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
	draw_text(220, 12, "MAIN MENU");
	draw_sprite_ext(spr_button, 0, 368, 10, 1, 1, 0, c_white, 1); // Used Extended for bug fixing purposes
	draw_text_transformed(350, 12, "FISH :", 0.8, 0.8, 0);
	draw_text_transformed(390, 12, string(global.fishWallet), 0.8, 0.8, 0);
}

#endregion

#region Level Selection (Only needed for Prototype)

if (room == rm_levelSelection)
{
	draw_text_transformed(128, 244, "Disclaimer: This is a prototype." +
	"\nDisplayed Levels are the currently available gameplay areas.", 0.5, 0.5, 0);
}

#endregion

#region Level 1-1 (See if it is visable for other levels)

if (room == rm_level1_1)
{
	if (finishedLevel == enumLevelFinished.notFinished)
	{
		draw_set_halign(fa_center);
		draw_set_font(fnt_baseFont);
		draw_sprite(spr_button, 0, 40, 50);
		draw_text_transformed(25, 50, "SCORE : ", 0.65, 0.65, 0);
		draw_text_transformed(65, 50, string(score), 0.8, 0.8, 0);
		draw_sprite(spr_button, 0, 40, 100);
		draw_sprite_ext(spr_sealFish_strip16, 15, 12, 100, 1.25, 1.25, 0, c_white, 1);
		draw_text_transformed(30, 100, ": ", 0.8, 0.8, 0);
		draw_text_transformed(65, 100, string(fishScore), 0.8, 0.8, 0);
	
		// Top UI
		draw_sprite_ext(spr_button, 0, 380, 10, 0.75, 0.75, 0, c_white, 1);
		if (timerSprite <= 6)
		{
			draw_sprite_ext(spr_timer, timerSprite, 350, 10, 0.4, 0.4, 0, c_white, 1);
			timerSprite++;
		}
		if (timerSprite == 7)
		{
			timerSprite = 0;
		}		
		draw_text_transformed(360, 10, ": ", 0.6, 0.6, 0);
		draw_text_transformed(385, 10, string(levelTimer / room_speed), 0.7, 0.7, 0);
		draw_sprite_ext(spr_button, 0, 465, 10, 0.75, 0.75, 0, c_white, 1);
		draw_text_transformed(452, 12, "LV| 1-1", 0.6, 0.75, 0);
		
		// Power Ups UI
		draw_sprite_ext(spr_button, 0, 35, 220, 1.5, 2.5, 90, c_white, 1);
		draw_set_font(fnt_creditsFont);
		draw_set_halign(fa_left);
		draw_text_transformed(1, 155, "POWER-UPS!", 0.6, 0.6, 0);
		draw_line_width(0, 160, 75, 160, 2);
		draw_line_width(0, 214, 75, 214, 2);
		if (powerUpTT <= enumPowerUps.notUnlocked)
		{
			draw_sprite(spr_notUnlocked, 0, 19, 190); 
			draw_sprite(spr_notUnlocked, 0, 56, 190); 
		}
		if (powerUpSD <= enumPowerUps.notUnlocked)
		{
			draw_sprite(spr_notUnlocked, 0, 19, 240);
			draw_sprite(spr_notUnlocked, 0, 56, 240);
		}
		if (powerUpTT >= enumPowerUps.Unlocked)
		{
			if (activatedPowerUpTT == enumPowerUpsActivation.activated)
			{
				draw_sprite_ext(spr_powerUpTimesTwo, 0, 18, 190, 1, 1, 0, c_grey, 0.7);
				draw_text_transformed_colour(40, 190, ": " + string(powerUpTTCountdown / 60), 0.6, 0.6, 0, c_grey, c_grey, c_grey, c_grey, 0.7);
				powerUpTTCountdown--;
			}
			if (activatedPowerUpTT == enumPowerUpsActivation.notActivated)
			{
				if (powerUpTT == 0)
				{
					draw_sprite_ext(spr_powerUpTimesTwo, 0, 40, 188, 1.5, 1.5, 0, c_grey, 0.7);
				}
				if (!(powerUpTT == 0))
				{
					draw_sprite(spr_powerUpTimesTwo, 0, 18, 190);
					draw_text(40, 190, ": " + string(powerUpTT));
				}
			}
		}		
		if (powerUpSD >= enumPowerUps.Unlocked)
		{
			if (activatedPowerUpSD == enumPowerUpsActivation.activated)
			{
				draw_sprite_ext(spr_powerUpSlowDown, 0, 18, 240, 1, 1, 0, c_grey, 0.7);
				draw_text_transformed_colour(40, 240, ": " + string(powerUpSDCountdown / 60), 0.6, 0.6, 0, c_grey, c_grey, c_grey, c_grey, 0.7);
				powerUpSDCountdown--;
			}
			if (activatedPowerUpSD == enumPowerUpsActivation.notActivated)
			{
				if (powerUpSD == 0)
				{
					draw_sprite_ext(spr_powerUpSlowDown, 0, 40, 240, 1.5, 1.5, 0, c_grey, 0.7);
				}
				if (!(powerUpSD == 0))
				{
					draw_sprite(spr_powerUpSlowDown, 0, 18, 240);
					draw_text(40, 240, ": " + string(powerUpSD));
				}
			}
		}			
	}
	
	if (finishedLevel == enumLevelFinished.finished)
	{
		draw_sprite(spr_resultsScreen, 0, 240, 135);
		draw_set_font(fnt_boldFont);
		draw_set_halign(fa_center);
		draw_text_transformed_colour(240, 60, "~~~VICTORY~~~", 1.4, 1.4, 0, c_lime, c_green, c_lime, c_green, 1);
		draw_text(141, 90, "FINAL SCORE:");
		draw_text_transformed(281, 90, string(score), 1.2, 1.2, 0);
		draw_text(155, 110, "FISH ACQUIRED:");
		draw_text_transformed(290, 110, string(fishScore), 1.2, 1.2, 0);
		draw_set_font(fnt_baseFont);
		draw_text_transformed(340, 190, "EXIT LEVEL", 0.7, 0.7, 0);
	}
}

#endregion

#region Endless


#endregion

#region Shop (Power Ups)

if (room == rm_shopPowerUps)
{
	draw_sprite_ext(spr_clipBoard, 0, 250, 25, 1.1, 1.1, 0, c_white, 1);
	// Horizonial Lines
	draw_line_width_colour(290, 110, 420, 110, 3, c_black, c_black);
	draw_line_width_colour(290, 170, 420, 170, 3, c_black, c_black);
	// Vertical Lines
	draw_line_width_colour(338, 55, 338, 250, 2, c_black, c_black);
	draw_line_width_colour(390, 55, 390, 250, 2, c_black, c_black);
	
	
	// Times Two
	if (global.fishWallet < 100)
	{
		draw_sprite_ext(spr_powerUpTimesTwo, 0, 310, 80, 1.5, 1.5, 0, c_grey, 0.7);
		draw_sprite_ext(spr_fish, 0, 350, 80, 2, 2, 0, c_grey, 0.9);
		draw_text_colour(375, 80, "100", c_grey, c_grey, c_grey, c_grey, 0.9); 
		if (instance_exists(obj_shopTTConfirmButton))
		{
			instance_destroy(obj_shopTTConfirmButton);
		}
	}
	if (global.fishWallet >= 100)
	{
		draw_sprite_ext(spr_powerUpTimesTwo, 0, 310, 80, 1.5, 1.5, 0, c_white, 1);
		draw_sprite_ext(spr_fish, 0, 350, 80, 2, 2, 0, c_white, 1);
		draw_text_colour(375, 80, "100", c_blue, c_blue, c_blue, c_blue, 1); 
		draw_sprite_ext(spr_tick, 0, 415, 75, 0.5, 0.5, 0, c_green, 1);
		if (!(instance_exists(obj_shopTTConfirmButton)))
		{
			instance_create_layer(415, 75, "Instances", obj_shopTTConfirmButton, {image_xscale: 0.5, image_yscale: 0.5});
		}
	}
	
	// Slow Down
	if (global.fishWallet < 120)
	{
		draw_sprite_ext(spr_powerUpSlowDown, 0, 310, 140, 1.5, 1.5, 0, c_grey, 0.7);
		draw_sprite_ext(spr_fish, 0, 350, 140, 2, 2, 0, c_grey, 0.9);
		draw_text_colour(375, 140, "120", c_grey, c_grey, c_grey, c_grey, 0.9);
		if (instance_exists(obj_shopSDConfirmButton))
		{
			instance_destroy(obj_shopSDConfirmButton);
		}
	}
	if (global.fishWallet >= 120)
	{
		draw_sprite_ext(spr_powerUpSlowDown, 0, 310, 140, 1.5, 1.5, 0, c_white, 1);
		draw_sprite_ext(spr_fish, 0, 350, 140, 2, 2, 0, c_white, 1);
		draw_text_colour(375, 140, "120", c_blue, c_blue, c_blue, c_blue, 1);
		draw_sprite_ext(spr_tick, 0, 415, 135, 0.5, 0.5, 0, c_green, 1);
		if (!(instance_exists(obj_shopSDConfirmButton)))
		{
			instance_create_layer(415, 135, "Instances", obj_shopSDConfirmButton, {image_xscale: 0.5, image_yscale: 0.5});
		}
	}
	
	// ?? Power Up AKA Not Available
	
	draw_sprite_ext(spr_notUnlocked, 0, 310, 210, 1.2, 1.2, 0, c_teal, 1);
	draw_sprite_ext(spr_notUnlocked, 0, 365, 210, 1.2, 1.2, 0, c_teal, 1);
}

#endregion