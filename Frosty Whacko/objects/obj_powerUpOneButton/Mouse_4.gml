/// @description 

event_inherited();

with (obj_coreGame)
{
	if (activatedPowerUpTT == enumPowerUpsActivation.activated)
	{
		exit;
	}
	if (activatedPowerUpTT == enumPowerUpsActivation.notActivated)
	{
		if (powerUpTT <= enumPowerUps.notUnlocked)
		{
			audio_play_sound(snd_soundeffectNotUnlocked, 0, 0);
		}

		if (powerUpTT == enumPowerUps.Unlocked)
		{
			audio_play_sound(snd_soundeffectEmptyPowerUps, 0, 0);
		}
		if (powerUpTT >= 1)
		{
			// Add cool audio here
			activatedPowerUpTT = enumPowerUpsActivation.activated;
			alarm_set(2, room_speed * 20); // Activates alarm that will turn the power up off
		}
	}
}