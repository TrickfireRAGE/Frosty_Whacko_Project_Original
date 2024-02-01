/// @description ???

if (image_speed > 0) // Code from within Manual
{
	if (image_index > image_number - 1)
	{
		image_speed = 0;
		exit;
	}
	// Room Check
	switch (room)
	{
		case (rm_level1_1):
			if (obj_coreGame.activatedPowerUpSD == enumPowerUpsActivation.notActivated)
			{
				image_speed = 1;
				exit;
			}
			if (obj_coreGame.activatedPowerUpSD == enumPowerUpsActivation.activated)
			{
				image_speed = 0.5;
				exit;
			}
			break;
		case (rm_levelEndless):
			if (obj_coreGame.activatedPowerUpSD == enumPowerUpsActivation.notActivated)
			{
				image_speed = 1.5;
				exit;
			}
			if (obj_coreGame.activatedPowerUpSD == enumPowerUpsActivation.activated)
			{
				image_speed = 0.75;
				exit;
			}
			break;
	}	
}



