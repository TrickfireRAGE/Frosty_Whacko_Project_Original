/// @description ???

event_inherited();

draw_text_transformed(x, y, "75%", 0.5, 0.5, 0);

if (global.soundVolume == 0.75) // This is used to showcase what setting is currently selected.
{
	image_blend = c_lime;
}

if (global.soundVolume != 0.75)
{
	image_blend = c_white;
}

