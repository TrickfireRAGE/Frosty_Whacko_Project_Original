/// @description ???

event_inherited();

draw_text_transformed(x, y, "FHD", 0.5, 0.5, 0);

if (global.resolutionHeight == 1080) // This is used to showcase what setting is currently selected.
{
	image_blend = c_lime;
}

if (global.resolutionHeight != 1080)
{
	image_blend = c_white;
}
