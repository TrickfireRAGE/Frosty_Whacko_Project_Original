/// @description The retracting of the seal
switch (room)
{
	case (rm_level1_1):
		if (obj_coreGame.activatedPowerUpSD == enumPowerUpsActivation.notActivated)
		{
			image_speed = -1;
			alarm_set(1, room_speed) // Adjust this later
		}

		if (obj_coreGame.activatedPowerUpSD == enumPowerUpsActivation.activated)
		{
			image_speed = -0.5;
			alarm_set(1, room_speed * 2);
		}
		break;
	case (rm_levelEndless):
		if (obj_coreGame.activatedPowerUpSD == enumPowerUpsActivation.notActivated)
		{
			image_speed = -1.5;
			alarm_set(1, room_speed / 1.5) // Adjust this later
		}

		if (obj_coreGame.activatedPowerUpSD == enumPowerUpsActivation.activated)
		{
			image_speed = -0.75;
			alarm_set(1, room_speed * 1.75);
		}
		break;
}




