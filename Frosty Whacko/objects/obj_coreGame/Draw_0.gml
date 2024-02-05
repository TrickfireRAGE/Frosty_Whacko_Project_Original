/// @description ALL OF THIS CAN BE IN A UI MANAGER INSTEAD

#region Title Screen (Version Number)

if (room == rm_titleScreen)
{
	draw_set_font(fnt_creditsFont);
	draw_text_transformed_colour(415, 10, "Version 0.0.2.2.1 Alpha Build", 0.4, 0.4, 0, c_red, c_red, c_red, c_red, 0.8);
	draw_set_font(fnt_baseFont);
}

#endregion

#region Credits

if (room == rm_credits)
{
	draw_set_font(fnt_creditsFont);
	draw_set_halign(fa_left);
	draw_text_transformed_colour(20, 125, 
		"FROSTY WHACKO" + // Reason the String was like this was due to the default character bug using @
		"\nProduced by Trickfire Studios" +
		"\nProgramming - Jonathon Lloyd-Jones" +
		"\nArtwork - Jonathon Lloyd-Jones" +
		"\nGame Design - Jonathon Lloyd-Jones" +
		"\n-------------------------------" +
		"\nExternal Assistance" +
		"\nMusic - The KAI Games" +
		"\nBeyond, Gekido's Theme - The KAI Games" +
		"\nInfinite's Theme, Sonic Forces - " +
		"\nSEGA + Tomoya Ohtani + Jun Senoue" +
		"\nInfinite's Theme Vocals and Mixed" +
		"\n ^ - Tyler Smyth" +
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
	draw_text_transformed(345, 12, "FISH :", 0.8, 0.8, 0);
	draw_text_transformed(395, 12, string(global.fishWallet), 0.8, 0.8, 0);
}

#endregion

#region Level Selection (Only needed for Prototype)

if (room == rm_levelSelection)
{
	draw_text_transformed(128, 244, "Disclaimer: This is a prototype." +
	"\nDisplayed Levels are the currently available gameplay areas.", 0.5, 0.5, 0);
}

#endregion

#region Tutorial (Only Needed for Prototype)

if (room == rm_tutorial)
{
	var _xSprite = 180;
	var _xText = 195;
	var _y = 55;
	var _scale = 1.5;
	var _powerScale = 0.7;
	var _textScale = 0.4;
	draw_sprite_ext(spr_clipBoard, 0, 120, 0, 1.5, 1.5, 0, c_white, 1);
	draw_sprite(spr_mouse, 0, _xSprite, _y);
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_text_transformed(_xText, _y, " - Left Click on those CHEEKY SEALS to whack them!", _textScale, _textScale, 0);
	draw_sprite_ext(spr_sealNoFish_strip16, 15, _xSprite, _y * 1.5, _scale, _scale, 0, c_white, 1);
	draw_text_transformed(_xText, _y * 1.5, " - This Seal gives 10 score, but he doesn't have Fish!", _textScale, _textScale, 0);
	draw_sprite_ext(spr_sealFish_strip16, 15, _xSprite, _y * 2, _scale, _scale, 0, c_white, 1);
	draw_text_transformed(_xText, _y * 2, " - This Seal gives 10 scores and HAS YOUR FISH!", _textScale, _textScale, 0);
	draw_sprite_ext(spr_sealIce_strip16, 15, _xSprite, _y * 2.5, _scale, _scale, 0, c_white, 1);
	draw_text_transformed(_xText, _y * 2.5, " - This Seal is FREEZING, will make you stop for a " + "\nfew seconds. No Fish, No Score", _textScale, _textScale, 0);
	draw_sprite_ext(spr_sealBomb_strip16, 15, _xSprite, _y * 3, _scale, _scale, 0, c_white, 1);
	draw_text_transformed(_xText, _y * 3, " - This Seal is EXPLOSIVE, all your fish that you " + "\ncollected, will disappear! VERY BAD!", _textScale, _textScale, 0);
	draw_sprite_ext(spr_fish, 0, _xSprite, _y * 3.5, _scale, _scale, 0, c_white, 1);
	draw_text_transformed(_xText, _y * 3.5, " - This is the source of everything, more power, food," + "\nand importantly, your reason for whacking them Seals!", _textScale, _textScale, 0);
	draw_sprite_ext(spr_powerUpTimesTwo, 0, _xSprite, _y * 4, _powerScale, _powerScale, 0, c_white, 1);
	draw_text_transformed(_xText, _y * 4, " - Want to get more score and Fish? Times Two is how " + "\nit's done, buy from your local penguin!", _textScale, _textScale, 0);
	draw_sprite_ext(spr_powerUpSlowDown, 0, _xSprite, _y * 4.5, _powerScale, _powerScale, 0, c_white, 1);
	draw_text_transformed(_xText, _y * 4.5, " - S-S-Slow down your enemies with this cool power!" + "\nIf you want it, go to your local penguin!", _textScale, _textScale, 0);
	draw_set_halign(fa_center);
}

#endregion

#region Level 1-1 (Both this and Endless can be improved, see Notes after Talk with Finn)

if (room == rm_level1_1)
{
	if (finishedLevel == enumLevelFinished.notFinished)
	{
		// Side UI
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
		draw_set_halign(fa_left);
		draw_sprite_ext(spr_sealNoFish_strip16, 15, 90, 130, 1.5, 1.5, 0, c_white, 1);
		draw_text(105, 130, "--> " + string(sealNoFishCounter));		
		draw_sprite_ext(spr_sealFish_strip16, 15, 90, 155, 1.5, 1.5, 0, c_white, 1);
		draw_text(105, 155, "--> " + string(sealFishCounter));	
		draw_set_halign(fa_center);
		draw_set_font(fnt_baseFont);
		draw_text_transformed(340, 190, "EXIT LEVEL", 0.7, 0.7, 0);
	}
}

#endregion

#region Endless

if (room == rm_levelEndless)
{
	if (finishedLevel == enumLevelFinished.notFinished)
	{
		
		// Side UI
		draw_set_halign(fa_center);
		draw_set_font(fnt_baseFont);
		draw_sprite(spr_button, 0, 40, 50);
		draw_text_transformed(25, 50, "SCORE : ", 0.65, 0.65, 0);
		draw_text_transformed(65, 50, string(score), 0.8, 0.8, 0);
		draw_sprite(spr_button, 0, 40, 100);
		draw_sprite_ext(spr_sealFish_strip16, 15, 12, 100, 1.25, 1.25, 0, c_white, 1);
		draw_text_transformed(30, 100, ": ", 0.8, 0.8, 0);
		if (explosionCounter == enumExplosionDebuff.deactivated)
		{
			draw_text_transformed(65, 100, string(fishScore), 0.8, 0.8, 0);
		}
		if (!(explosionCounter == enumExplosionDebuff.deactivated) && (explosionCounter <= enumExplosionDebuff.activated))
		{
			draw_sprite(spr_explosion, 0, irandom_range(55, 75), irandom_range(95, 105));
			draw_sprite(spr_explosion, 0, irandom_range(55, 75), irandom_range(95, 105));
			draw_sprite(spr_explosion, 0, irandom_range(55, 75), irandom_range(95, 105));			
			explosionCounter--;
		}
	
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
		draw_text_transformed(385, 10, "ENDLESS", 0.6, 0.6, 0);
		
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
		
		// Ice Debuff UI
		if (!(freezeCounter == enumFreezeDebuff.deactivated) && (freezeCounter <= enumFreezeDebuff.activated))
		{
			depth = -9999; // To fix the seals appearing above ice issue
			draw_sprite_ext(spr_icedOver, 0, 0, 0, 1, 1, 0, c_aqua, (freezeCounter / enumFreezeDebuff.activated));
			freezeCounter--;
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
		draw_set_halign(fa_left);
		draw_sprite_ext(spr_sealNoFish_strip16, 15, 90, 130, 1.5, 1.5, 0, c_white, 1);
		draw_text(105, 130, "--> " + string(sealNoFishCounter));		
		draw_sprite_ext(spr_sealFish_strip16, 15, 90, 155, 1.5, 1.5, 0, c_white, 1);
		draw_text(105, 155, "--> " + string(sealFishCounter));	
		draw_sprite_ext(spr_sealBomb_strip16, 15, 90, 180, 1.5, 1.5, 0, c_white, 1);
		draw_text(105, 180, "--> " + string(sealBombCounter));	
		draw_sprite_ext(spr_sealIce_strip16, 15, 90, 205, 1.5, 1.5, 0, c_white, 1);
		draw_text(105, 205, "--> " + string(sealIceCounter));
		draw_set_halign(fa_center);
		draw_set_font(fnt_baseFont);
		draw_text_transformed(340, 190, "EXIT LEVEL", 0.7, 0.7, 0);
	}
}


#endregion

#region Shop (Power Ups)

if (room == rm_shopPowerUps)
{
	// Fish Counter
	draw_sprite(spr_button, 0, 180, 10);
	draw_set_halign(fa_left);
	draw_set_font(fnt_creditsFont);
	draw_sprite_ext(spr_fish, 0, 175, 10, 1.2, 1.2, 0, c_white, 1);
	draw_text_transformed(133, 10, "FISH: ", 0.8, 0.8, 0);
	draw_set_halign(fa_center);
	draw_text_transformed(205, 10, string(global.fishWallet), 0.8, 0.8, 0);
	draw_set_font(fnt_baseFont);
	// Clipboard
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
		draw_sprite_ext(spr_powerUpTimesTwo, 0, 310, 80, 1.7, 1.7, 0, c_red, 0.8);
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
		draw_sprite_ext(spr_powerUpSlowDown, 0, 310, 140, 1.7, 1.7, 0, c_red, 0.8);
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

#region Shop (Sounds) (THIS CAN BE A LOT BETTER IF FOLLOWING NOTES)

if (room == rm_shopSounds)
{
	// Fish Counter
	draw_sprite(spr_button, 0, 180, 10);
	draw_set_halign(fa_left);
	draw_set_font(fnt_creditsFont);
	draw_text_transformed(133, 10, "FISH: ", 0.8, 0.8, 0);
	draw_sprite_ext(spr_fish, 0, 175, 10, 1.2, 1.2, 0, c_white, 1);
	draw_set_halign(fa_center);
	draw_text_transformed(205, 10, string(global.fishWallet), 0.8, 0.8, 0);
	draw_text_transformed_colour(355, 10, "ENDLESS ONLY", 0.8, 0.8, 0, c_red, c_orange, c_yellow, c_red, 1);
	draw_set_font(fnt_baseFont);
	
	// Clipboard
	draw_sprite_ext(spr_clipBoard, 0, 250, 25, 1.1, 1.1, 0, c_white, 1);
	
	// Horizonial Lines (Can be improved with Variable and then additions.)
	draw_line_width_colour(282, 92, 428, 92, 2, c_black, c_black);
	draw_line_width_colour(282, 127, 428, 127, 2, c_black, c_black);
	draw_line_width_colour(282, 162, 428, 162, 2, c_black, c_black);
	draw_line_width_colour(282, 197, 428, 197, 2, c_black, c_black);
	
	
	// Vertical Lines
	draw_line_width_colour(354.5, 58, 354.5, 250, 2, c_black, c_black);
	draw_line_width_colour(400, 55, 400, 250, 2, c_black, c_black);
	
	
	// Music Track "snd_backgroundMusicFate" - Boss Track (Boss Levels were not implemented in time)
	// In future, instead of random numbers, have _x and _y variables that will set the numbers so they don't rely on magic numbers.
	// This makes the code more readable and easy to come back to in future.
	
	if (global.fishWallet < 300)
	{
		instance_create_layer(287, 75, "Shop_Instances", obj_shopFatePlayButton, {image_xscale: 0.8, image_yscale: 0.8});
		draw_text_transformed_colour(325, 77, "Your Fate" + "\nis SEALED", 0.6, 0.6, 0, c_dkgrey, c_dkgrey, c_dkgrey, c_dkgrey, 0.9);
		draw_sprite_ext(spr_fish, 0, 365, 77, 2, 2, 0, c_grey, 0.9);
		draw_text_transformed_colour(390, 77, "300", 0.75, 0.75, 0, c_grey, c_grey, c_grey, c_grey, 0.9); 
		if (instance_exists(obj_shopFateConfirmButton))
		{
			instance_destroy(obj_shopFateConfirmButton);
		}
	}
	if (global.fishWallet >= 300 || endlessTrackFate == true)
	{
		instance_create_layer(287, 75, "Shop_Instances", obj_shopFatePlayButton, {image_xscale: 0.8, image_yscale: 0.8});
		draw_text_transformed_colour(325, 77, "Your Fate" + "\nis SEALED", 0.6, 0.6, 0, c_red, c_orange, c_fuchsia, c_red, 1); // Future Builds, remove magic numbers and state variables
		switch(endlessTrackFate)
		{
			case(true):
				draw_text_transformed_colour(378, 77, "OWNED!", 0.6, 0.6, 0, c_blue, c_purple, c_teal, c_blue, 1);
				break;
			case(false):
				draw_sprite_ext(spr_fish, 0, 365, 77, 2, 2, 0, c_white, 1);
				draw_text_transformed_colour(390, 77, "300", 0.75, 0.75, 0, c_blue, c_blue, c_blue, c_blue, 1); 
				break;
		}
		if (!(instance_exists(obj_shopFateConfirmButton)) && !(endlessTrackSelection == enumEndlessTracks.yourFateIsSealed))
		{
			instance_create_layer(415, 75, "Shop_Instances", obj_shopFateConfirmButton, {image_xscale: 0.4, image_yscale: 0.4});
		}
		if (instance_exists(obj_shopFateConfirmButton) && endlessTrackSelection == enumEndlessTracks.yourFateIsSealed)
		{
			instance_destroy(obj_shopFateConfirmButton);
		}
	}
	
	// Music Track "snd_backgroundMusicRight" - First Level (Level 1-1)
	
	if (global.fishWallet < 150)
	{
		instance_create_layer(287, 110, "Shop_Instances", obj_shopRightPlayButton, {image_xscale: 0.8, image_yscale: 0.8});
		draw_text_transformed_colour(325, 112, "Right to Polar" + "\nBear Arms", 0.5, 0.5, 0, c_dkgrey, c_dkgrey, c_dkgrey, c_dkgrey, 0.9);
		draw_sprite_ext(spr_fish, 0, 365, 112, 2, 2, 0, c_grey, 0.9);
		draw_text_transformed_colour(390, 112, "150", 0.6, 0.6, 0, c_grey, c_grey, c_grey, c_grey, 0.9); 
		if (instance_exists(obj_shopRightConfirmButton))
		{
			instance_destroy(obj_shopRightConfirmButton);
		}
	}
	if (global.fishWallet >= 150 || endlessTrackRight == true)
	{
		instance_create_layer(287, 110, "Shop_Instances", obj_shopRightPlayButton, {image_xscale: 0.8, image_yscale: 0.8});
		draw_text_transformed_colour(325, 112, "Right to Polar" + "\nBear Arms", 0.5, 0.5, 0, c_red, c_orange, c_fuchsia, c_red, 1);
		switch(endlessTrackRight)
		{
			case(true):
				draw_text_transformed_colour(378, 112, "OWNED!", 0.6, 0.6, 0, c_blue, c_purple, c_teal, c_blue, 1);
				break;
			case(false):
				draw_sprite_ext(spr_fish, 0, 365, 112, 2, 2, 0, c_white, 1);
				draw_text_transformed_colour(390, 112, "150", 0.75, 0.75, 0, c_blue, c_blue, c_blue, c_blue, 1); 
				break;
		}
		if (!(instance_exists(obj_shopRightConfirmButton)) && !(endlessTrackSelection == enumEndlessTracks.rightToPolarBearArms))
		{
			instance_create_layer(415, 110, "Shop_Instances", obj_shopRightConfirmButton, {image_xscale: 0.4, image_yscale: 0.4});
		}
		if (instance_exists(obj_shopRightConfirmButton) && endlessTrackSelection == enumEndlessTracks.rightToPolarBearArms)
		{
			instance_destroy(obj_shopRightConfirmButton);
		}
	}
	
	// Music Track "snd_backgroundWrong" - Other Level Track, Used for Default Endless
	if (endlessTrackWrong == true)
	{
		instance_create_layer(287, 145, "Shop_Instances", obj_shopWrongPlayButton, {image_xscale: 0.8, image_yscale: 0.8});
		draw_text_transformed_colour(325, 147, "Wrong to Polar" + "\nBear Arms" , 0.47, 0.47, 0, c_red, c_orange, c_fuchsia, c_red, 1);
		switch(endlessTrackWrong)
		{
			case(true):
				draw_text_transformed_colour(378, 147, "OWNED!", 0.6, 0.6, 0, c_blue, c_purple, c_teal, c_blue, 1);
				break;
			case(false):
				draw_text_transformed_colour(385, 147, "Error", 0.7, 0.7, 0, c_blue, c_blue, c_blue, c_blue, 1); 
				break;
		}
		if (!(instance_exists(obj_shopWrongConfirmButton)))
		{
			instance_create_layer(415, 147, "Shop_Instances", obj_shopWrongConfirmButton, {image_xscale: 0.4, image_yscale: 0.4});
		}
		if (instance_exists(obj_shopWrongConfirmButton) && endlessTrackSelection == enumEndlessTracks.wrongToPolarBearArms)
		{
			instance_destroy(obj_shopWrongConfirmButton);
		}
	}
	
	// Music Track "snd_backgroundInfiniteInstru" - Infinite's Instramental from Sonic Forces. Not Usable outside College
	
	if (global.fishWallet < 600)
	{
		instance_create_layer(287, 180, "Shop_Instances", obj_shopInfinitePlayButton, {image_xscale: 0.8, image_yscale: 0.8});
		draw_text_transformed_colour(325, 182, "Infinite", 0.55, 0.55, 0, c_dkgrey, c_dkgrey, c_dkgrey, c_dkgrey, 0.9);
		draw_sprite_ext(spr_fish, 0, 365, 182, 2, 2, 0, c_grey, 0.9);
		draw_text_transformed_colour(390, 182, "600", 0.7, 0.7, 0, c_grey, c_grey, c_grey, c_grey, 0.9); 
		if (instance_exists(obj_shopInfiniteConfirmButton))
		{
			instance_destroy(obj_shopInfiniteConfirmButton);
		}
	}
	if (global.fishWallet >= 600 || endlessTrackInfiniteIntru == true)
	{
		instance_create_layer(287, 180, "Shop_Instances", obj_shopInfinitePlayButton, {image_xscale: 0.8, image_yscale: 0.8});
		draw_text_transformed_colour(325, 182, "Infinite" , 0.55, 0.55, 0, c_red, c_orange, c_fuchsia, c_red, 1);
		switch(endlessTrackInfiniteIntru)
		{
			case(true):
				draw_text_transformed_colour(378, 182, "OWNED!", 0.6, 0.6, 0, c_blue, c_purple, c_teal, c_blue, 1);
				break;
			case(false):
				draw_sprite_ext(spr_fish, 0, 365, 182, 2, 2, 0, c_white, 1);
				draw_text_transformed_colour(388, 182, "600", 0.7, 0.7, 0, c_blue, c_blue, c_blue, c_blue, 1); 
				break;
		}
		if (!(instance_exists(obj_shopInfiniteConfirmButton)) && !(endlessTrackSelection == enumEndlessTracks.infiniteInstrumental))
		{
			instance_create_layer(415, 180, "Shop_Instances", obj_shopInfiniteConfirmButton, {image_xscale: 0.4, image_yscale: 0.4});
		}
		if (instance_exists(obj_shopInfiniteConfirmButton) && endlessTrackSelection == enumEndlessTracks.infiniteInstrumental)
		{
			instance_destroy(obj_shopInfiniteConfirmButton);
		}
	}
	
	// Music Track "snd_backgroundBeyond" - Gekido Sound Track
	
	if (global.fishWallet < 500)
	{
		instance_create_layer(287, 215, "Shop_Instances", obj_shopBeyondPlayButton, {image_xscale: 0.8, image_yscale: 0.8});
		draw_text_transformed_colour(325, 217, "'Beyond'" + "\nGekido's Theme", 0.45, 0.45, 0, c_dkgrey, c_dkgrey, c_dkgrey, c_dkgrey, 0.9);
		draw_sprite_ext(spr_fish, 0, 365, 217, 2, 2, 0, c_grey, 0.9);
		draw_text_transformed_colour(390, 217, "500", 0.7, 0.7, 0, c_grey, c_grey, c_grey, c_grey, 0.9); 
		if (instance_exists(obj_shopBeyondConfirmButton))
		{
			instance_destroy(obj_shopBeyondConfirmButton);
		}
	}
	if (global.fishWallet >= 500 || endlessTrackBeyond == true)
	{
		instance_create_layer(287, 215, "Shop_Instances", obj_shopBeyondPlayButton, {image_xscale: 0.8, image_yscale: 0.8});
		draw_text_transformed_colour(325, 217, "'Beyond'" + "\nGekido's Theme", 0.45, 0.45, 0, c_red, c_orange, c_fuchsia, c_red, 1);
		switch(endlessTrackBeyond)
		{
			case(true):
				draw_text_transformed_colour(378, 217, "OWNED!", 0.6, 0.6, 0, c_blue, c_purple, c_teal, c_blue, 1);
				break;
			case(false):
				draw_sprite_ext(spr_fish, 0, 365, 217, 2, 2, 0, c_white, 1);
				draw_text_transformed_colour(388, 217, "500", 0.7, 0.7, 0, c_blue, c_blue, c_blue, c_blue, 1); 
				break;
		}
		if (!(instance_exists(obj_shopBeyondConfirmButton)) && !(endlessTrackSelection == enumEndlessTracks.beyondGekidoTheme))
		{
			instance_create_layer(415, 217, "Shop_Instances", obj_shopBeyondConfirmButton, {image_xscale: 0.4, image_yscale: 0.4});
		}
		if (instance_exists(obj_shopBeyondConfirmButton) && endlessTrackSelection == enumEndlessTracks.beyondGekidoTheme)
		{
			instance_destroy(obj_shopBeyondConfirmButton);
		}
	}
}

#endregion