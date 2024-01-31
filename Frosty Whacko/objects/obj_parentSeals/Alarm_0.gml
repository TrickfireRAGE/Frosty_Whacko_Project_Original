/// @description The retracting of the seal

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





