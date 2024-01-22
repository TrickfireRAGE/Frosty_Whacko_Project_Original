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
	draw_text_transformed(_x, _y, string(shopQuote[enumShopQuote.quote][shopChosenQuote]), 
	shopQuote[enumShopQuote.scale][shopChosenQuote], 
	shopQuote[enumShopQuote.scale][shopChosenQuote],0);
}
if (room == rm_shopPowerUps)
{
	draw_text_transformed(_x, _y, string(powerupQuote[enumShopQuote.quote][powerChosenQuote]), 
	powerupQuote[enumShopQuote.scale][powerChosenQuote], 
	powerupQuote[enumShopQuote.scale][powerChosenQuote],0);
}
if (room == rm_shopSounds)
{
	draw_text_transformed(_x, _y, string(soundQuote[enumShopQuote.quote][soundChosenQuote]), 
	soundQuote[enumShopQuote.scale][soundChosenQuote], 
	soundQuote[enumShopQuote.scale][soundChosenQuote],0);
}

#endregion



