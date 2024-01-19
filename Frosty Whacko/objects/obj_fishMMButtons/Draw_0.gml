/// @description

event_inherited(); // Takes variables from the parent
draw_set_halign(fa_right); // Changing it to left instead of Middle that is in Parent event.
draw_text(x, y, "FISH: "); // Draws the text with the already set variables.
draw_set_halign(fa_left);
draw_text(x, y, string(global.fishWallet)); // Has number seperate so it if the number becomes bigger, it doesn't trail off.