/// @description 

event_inherited();

if (userThreeNameVerify == 1)
{
	draw_text_transformed(x, y, string(userThreeName), 0.8, 0.8, 0);
}
if (userThreeNameVerify == 0)
{
	draw_text_transformed(x, y, "EMPTY SAVE", 0.8, 0.8, 0);
}
