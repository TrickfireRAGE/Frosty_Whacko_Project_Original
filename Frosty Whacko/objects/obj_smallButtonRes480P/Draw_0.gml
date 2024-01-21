/// @description ???

event_inherited();

draw_text_transformed(x, y, "480P", 0.5, 0.5, 0);

if (global.resolutionHeight == 480) // This is used to showcase what setting is currently selected.
{
	image_blend = c_lime;
}

if (global.resolutionHeight != 480)
{
	image_blend = c_white;
}
