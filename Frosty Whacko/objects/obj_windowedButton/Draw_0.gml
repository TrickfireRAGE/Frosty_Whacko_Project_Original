/// @description ???

event_inherited();

draw_text_transformed(x, y, "WINDOWED", 0.5, 0.5, 0);

if (global.fullScreen == enumFullScreen.windowed) // This is used to showcase what setting is currently selected.
{
	image_blend = c_lime;
}

if (global.fullScreen != enumFullScreen.windowed)
{
	image_blend = c_white;
}

