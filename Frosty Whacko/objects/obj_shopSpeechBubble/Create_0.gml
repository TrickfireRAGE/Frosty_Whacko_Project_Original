/// @description ???

image_speed = 0;
image_index = 0;
shopChosenQuote = irandom_range(0, 5); // Can be increased when new quotes are added, needed for quote randomization
powerChosenQuote = irandom_range(0, 0); // Will increase when more quotes are added
soundChosenQuote = irandom_range(0, 0); // Will increase when more quotes are added
alarm_set(0, 1); // For the Speech bubble to begin it's animation

#region Text/Quote Code
// Shop Quotes
shopQuote = [];
// All these variables are for the randomized quote you will get when entering the shop.
shopQuote[enumShopQuote.quote][0] = "*Beeps and Boops* - Oh! Sorry!" + "\nWas playing my IceStation, what can I get you?";
shopQuote[enumShopQuote.quote][1] = "Seals giving you problems?" + "\nI have solutions!";
shopQuote[enumShopQuote.quote][2] = "You got fish," + "\nI got goods.";
shopQuote[enumShopQuote.quote][3] = "Best way to get a Seal is to whack it!" + "\nNot punch them, Jerry knows a thing about that.";
shopQuote[enumShopQuote.quote][4] = "You are the coolest polar bear around!" + "\nI got the stuff to make you even cooler.";
shopQuote[enumShopQuote.quote][5] = "Welcome to the Shop!"; 

// Below is for all the scales

shopQuote[enumShopQuote.scale][0] = 0.5;
shopQuote[enumShopQuote.scale][1] = 0.7;
shopQuote[enumShopQuote.scale][2] = 0.7;
shopQuote[enumShopQuote.scale][3] = 0.44;
shopQuote[enumShopQuote.scale][4] = 0.5;
shopQuote[enumShopQuote.scale][5] = 0.7;

// Power Ups Quotes
powerupQuote = []; 
// Allows for unique quotes for just the powerup store

powerupQuote[enumShopQuote.quote][0] = "Power-Ups ay?" + "\nHere is some 1-U--" + "\n*Ring Ring* - Sorry! Got a phone call, have a look!";

powerupQuote[enumShopQuote.scale][0] = 0.4;

// Sound Quotes
soundQuote = [];

soundQuote[enumShopQuote.quote][0] = "Sounds ay?" + "\nAy? Ay? Sorry, I can't hear you!";

soundQuote[enumShopQuote.scale][0] = 0.5;

#endregion

