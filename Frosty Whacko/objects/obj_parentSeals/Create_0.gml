/// @description ???

if (!place_empty(x, y))
{
	instance_destroy();
}

// Put Difficulty Timer here if code breaks.

if (obj_coreGame.activatedPowerUpSD == enumPowerUpsActivation.activated)
{
	image_speed = 0.5;
	difficultyTimer = 5;
}
if (obj_coreGame.activatedPowerUpSD == enumPowerUpsActivation.notActivated)
{
	image_speed = 1;
	difficultyTimer = 3.5;
	// ^ This variable allows this to be changed if necessary in the future for faster or slower seals.
	// ^ Will decrease time with higher levels. Consider using switch to customise this.
}

image_index = 0;

alarm_set(0, room_speed * difficultyTimer);



