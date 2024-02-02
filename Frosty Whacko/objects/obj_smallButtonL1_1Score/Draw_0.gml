/// @description ???

event_inherited();

ini_open("saveFile.ini"); // Updated using new save system code
draw_text_transformed(x, y-7, "PREV SCORE: " + string(ini_read_real(global.userNameString + "_Score", "Level_1-1", 0)), 0.5, 0.5, 0); 
ini_close();


