/// @description ???

event_inherited();

ini_open("saveFile.ini");
draw_text_transformed(x, y, string(ini_read_real("User_Three", "Fish", 0)), 0.5, 0.5, 0); 
ini_close();


