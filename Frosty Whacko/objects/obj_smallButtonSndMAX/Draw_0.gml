/// @description ???

event_inherited();

draw_text_transformed(x, y, "MAX", 0.5, 0.5, 0);

if (global.soundVolume == 1) // This is used to showcase what setting is currently selected.
{
	image_blend = c_lime;
}

if (global.soundVolume != 1)
{
	image_blend = c_white;
}

