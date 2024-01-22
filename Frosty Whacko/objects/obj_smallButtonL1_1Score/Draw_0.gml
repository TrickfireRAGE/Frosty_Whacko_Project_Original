/// @description ???

event_inherited();

ini_open("saveFile.ini");
switch(global.userName)
{
	case(1):
		draw_text_transformed(x, y-7, "PREV SCORE: " + string(ini_read_real("User_One_Score", "Level_1-1", 0)), 0.5, 0.5, 0); 
		break;
	case(2):
		draw_text_transformed(x, y-7, "PREV SCORE: " + string(ini_read_real("User_Two_Score", "Level_1-1", 0)), 0.5, 0.5, 0);
		break;
	case(3):
		draw_text_transformed(x, y-7, "PREV SCORE: " + string(ini_read_real("User_Three_Score", "Level_1-1", 0)), 0.5, 0.5, 0);
		break;
}
ini_close();


