/// @description ???

event_inherited();

draw_text_transformed(x, y, "25%", 0.5, 0.5, 0);

if (global.soundVolume == 0.25) // This is used to showcase what setting is currently selected.
{
	image_blend = c_lime;
}

if (global.soundVolume != 0.25)
{
	image_blend = c_white;
}
