/// @description ???

if (!(obj_coreGame.freezeCounter == enumFreezeDebuff.deactivated))
{
	exit;
}
switch (bonkLimit)
{
	case(0):
		bonkLimit = 1;
		break;
	case(1):
		exit;
		break;
}


if ((sprite_index == spr_sealFish_strip16) || (sprite_index == spr_sealNoFish_strip16))
{
	with (obj_coreGame)
	{
		if (activatedPowerUpTT == enumPowerUpsActivation.activated)
		{
			score += 20;
		}
		if (activatedPowerUpTT == enumPowerUpsActivation.notActivated)
		{
			score += 10;
		}
	}
}

audio_play_sound(snd_soundeffectWhack, 1, 0);

switch(sprite_index)
{
	case(spr_sealNoFish_strip16):
		sprite_index = spr_sealNoFishBonked_strip16;
		obj_coreGame.sealNoFishCounter += 1; // Originally from obj_sealEmpty
		image_speed = 0;
		break;
	case(spr_sealFish_strip16):
		sprite_index = spr_sealFishBonked_strip16;
		if (obj_coreGame.activatedPowerUpTT == enumPowerUpsActivation.notActivated) // Originally in obj_sealFish
		{
			obj_coreGame.fishScore += 1;
			obj_coreGame.sealFishCounter += 1;
		}
		if (obj_coreGame.activatedPowerUpTT == enumPowerUpsActivation.activated)
		{
			obj_coreGame.fishScore += 2;
			obj_coreGame.sealFishCounter += 1;
		}
		image_speed = 0;
		break;
	case(spr_sealIce_strip16):
		sprite_index = spr_sealIceBonked_strip16;
		obj_coreGame.freezeCounter = enumFreezeDebuff.activated; // Originally from obj_sealIce
		audio_play_sound(snd_soundeffectIceFreeze, 0, 0, 1.5);
		obj_coreGame.sealIceCounter += 1;
		image_speed = 0;
		break;
	case(spr_sealBomb_strip16):
		sprite_index = spr_sealBombBonked_strip16;
		obj_coreGame.explosionCounter = enumExplosionDebuff.activated;
		audio_play_sound(snd_soundeffectBombExplosion, 0, 0, 1.5);
		obj_coreGame.fishScore = 0;
		obj_coreGame.sealBombCounter += 1;
		image_speed = 0;
		break;
}

alarm_set(1, room_speed); // Reusing Alarm 


