/// @description ???

image_speed = 0;
image_index = 0;
shopChosenQuote = irandom_range(0, 4); // Can be increased when new quotes are added, needed for quote randomization
alarm_set(0, 1); // For the Speech bubble to begin it's animation

#region Text/Quote Code

shopQuoteDefault = "Welcome to the Shop!"; // All these variables are for the randomized quote you will get when entering the shop.
shopQuoteOne = "*Beeps and Boops* - Oh! Sorry!" + "\nWas playing my IceStation, what can I get you?";
shopQuoteTwo = "Seals giving you problems?" + "\nI have solutions!";
shopQuoteThree = "You got fish," + "\nI got goods.";
shopQuoteFour = "Best way to get a Seal is to whack it!" + "\nNot punch them, Jerry knows a thing about that.";
shopQuoteFive = "You are the coolest polar bear around!" + "\nI got the stuff to make you even cooler.";


#endregion

