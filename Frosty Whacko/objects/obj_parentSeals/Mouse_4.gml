/// @description ???

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
		image_speed = 0;
		break;
	case(spr_sealFish_strip16):
		sprite_index = spr_sealFishBonked_strip16;
		image_speed = 0;
		break;
	case(spr_sealIce_strip16):
		sprite_index = spr_sealIceBonked_strip16;
		image_speed = 0;
		break;
	case(spr_sealBomb_strip16):
		sprite_index = spr_sealBombBonked_strip16;
		image_speed = 0;
		break;
}

alarm_set(1, room_speed); // Reusing Alarm 


