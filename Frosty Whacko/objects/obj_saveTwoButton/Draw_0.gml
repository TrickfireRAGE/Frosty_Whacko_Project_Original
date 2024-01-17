/// @description 

event_inherited();

if (userTwoNameVerify == 1)
{
	draw_text_transformed(x, y, string(userTwoName), 0.8, 0.8, 0);
}
if (userTwoNameVerify == 0)
{
	draw_text_transformed(x, y, "EMPTY SAVE", 0.8, 0.8, 0);
}
