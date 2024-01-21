/// @description ???

event_inherited();

draw_text_transformed(x, y, "UHD", 0.5, 0.5, 0);

if (global.resolutionHeight == 2160) // This is used to showcase what setting is currently selected.
{
	image_blend = c_lime;
}

if (global.resolutionHeight != 2160)
{
	image_blend = c_white;
}
