/// @description ???

if (image_speed > 0) // Code from within Manual
{
	if (image_index > image_number - 1)
	{
		image_speed = 0;
		exit;
	}
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
}



