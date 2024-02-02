/// @description ???

event_inherited();

ini_open("saveFile.ini");
draw_text_transformed(x, y-7, "PREV SCORE: " + string(ini_read_real(global.userNameString + "_Score", "Level_Endless", 0)), 0.5, 0.5, 0); 
ini_close();


