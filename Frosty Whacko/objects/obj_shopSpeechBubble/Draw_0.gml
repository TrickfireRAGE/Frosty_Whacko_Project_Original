/// @description ???
#region Font/Draw Code (From Button)

draw_self(); // This Draws the Sprite assigned to this object

draw_set_font(fnt_baseFont); // Sets the Font we are using for this button
draw_set_colour(c_aqua); // Sets the colour of the font
var _x = 111;
var _y = 85; // Used instead of fa_center and fa_middle due to issues

#endregion

#region Text/Quote Code

if (room == rm_shopMenu)
{
	// shopChosenQuote is randomised at the start of the room and is in the Room_Start Function
	// 111, 85 if it doesn't work
	switch (shopChosenQuote)
	{
		case (0):
			draw_text_transformed(_x, _y, shopQuoteOne, 0.5, 0.5, 0);
			break;
		case (1):
			draw_text_transformed(_x, _y, shopQuoteTwo, 0.7, 0.7, 0);
			break;
		case (2):
			draw_text_transformed(_x, _y, shopQuoteThree, 0.7, 0.7, 0);
			break;
		case (3):
			draw_text_transformed(_x, _y, shopQuoteFour, 0.44, 0.44, 0);
			break;
		case (4):
			draw_text_transformed(_x, _y, shopQuoteFive, 0.5, 0.5, 0);
			break;
		default:
			draw_text_transformed(_x, _y, shopQuoteDefault, 0.7, 0.7, 0);
			break;
	}
}

#endregion



