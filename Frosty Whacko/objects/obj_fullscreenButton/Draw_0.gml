/// @description ???

event_inherited();

draw_text_transformed(x, y, "FULLSCREEN", 0.5, 0.5, 0);

if (global.fullScreen == enumFullScreen.fullScreen) // This is used to showcase what setting is currently selected.
{
	image_blend = c_lime;
}

if (global.fullScreen != enumFullScreen.fullScreen)
{
	image_blend = c_white;
}

