/// @description 
with (obj_coreGame)
{
	if (powerUpTT == enumPowerUpsActivation.notActivated)
	{
		fishScore += 1;
	}
	if (powerUpTT == enumPowerUpsActivation.activated)
	{
		fishScore += 2;
	}
}

// Inherit the parent event
event_inherited();

