/// @description 

event_inherited();

if (userOneNameVerify == 1)
{
	draw_text_transformed(x, y, string(userOneName), 0.8, 0.8, 0);
}
if (userOneNameVerify == 0)
{
	draw_text_transformed(x, y, "EMPTY SAVE", 0.8, 0.8, 0);
}

