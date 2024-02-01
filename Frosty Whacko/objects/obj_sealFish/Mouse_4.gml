/// @description 
with (obj_coreGame)
{
	if (activatedPowerUpTT == enumPowerUpsActivation.notActivated)
	{
		fishScore += 1;
	}
	if (activatedPowerUpTT == enumPowerUpsActivation.activated)
	{
		fishScore += 2;
	}
}

// Inherit the parent event
event_inherited();

