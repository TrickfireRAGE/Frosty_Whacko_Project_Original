/// @description 

event_inherited();

with (obj_coreGame)
{
	if (activatedPowerUpSD == enumPowerUpsActivation.activated)
	{
		exit;
	}
	if (!(freezeCounter == enumFreezeDebuff.deactivated)) // Same as Button 1
	{
		exit;
	}
	if (activatedPowerUpSD == enumPowerUpsActivation.notActivated)
	{
		if (powerUpSD <= enumPowerUps.notUnlocked)
		{
			audio_play_sound(snd_soundeffectNotUnlocked, 0, 0);
		}

		if (powerUpSD == enumPowerUps.Unlocked)
		{
			audio_play_sound(snd_soundeffectEmptyPowerUps, 0, 0);
		}
		if (powerUpSD >= 1)
		{
			// Add cool audio here
			activatedPowerUpSD = enumPowerUpsActivation.activated;
			alarm_set(3, room_speed * 20); // Activates alarm that will turn the power up off
			powerUpSDCountdown = (room_speed * 20); // Same as alarm but to showcase how long until the player can use it again.
		}
	}
}