/// @description ???

event_inherited();

draw_text_transformed(x, y, "HD", 0.5, 0.5, 0);

if (global.resolutionHeight == 720) // This is used to showcase what setting is currently selected.
{
	image_blend = c_lime;
}

if (global.resolutionHeight != 720)
{
	image_blend = c_white;
}
