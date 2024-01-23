// Function Below
function scr_sealSpawnL1() // For the Levels 1-1 and Beyond in the Level 1 section.
// This is done due to how the holes are layed out and would require a different function if higher levels or endless.
// This can all be put into this function with clever coding. If I get around to it, like having different location
// Arrays for different layouts that would be communicated through the variables passed through.

{
	enum enumLocation 
	{
		xAxis = 0,
		yAxis = 1
	}
	enum enumSeals
	{
		Empty = 0,
		Fish = 1,
		Ice = 2, 
		Bomb = 3
	}
	
	#region Location Check/Spawning
	
	location = [];
	// Top Row Of Level
	location[0][enumLocation.xAxis] = 176;
	location[0][enumLocation.yAxis] = 96;
	location[1][enumLocation.xAxis] = 240;
	location[1][enumLocation.yAxis] = 96;
	location[2][enumLocation.xAxis] = 304;
	location[2][enumLocation.yAxis] = 96;	
	// Bottom Row of Level
	location[3][enumLocation.xAxis] = 176;
	location[3][enumLocation.yAxis] = 160;
	location[4][enumLocation.xAxis] = 240;
	location[4][enumLocation.yAxis] = 160;
	location[5][enumLocation.xAxis] = 304;
	location[5][enumLocation.yAxis] = 160;
	
	var spawnLocation = irandom_range(0, 5);
	
	var spawnX = location[spawnLocation][enumLocation.xAxis];
	var spawnY = location[spawnLocation][enumLocation.yAxis];
	
	while (place_meeting(spawnX, spawnY, all)) // Not working, as seals still spawning in same location.
	{
		spawnLocation = irandom_range(0,5);
		
		spawnX = location[spawnLocation][enumLocation.xAxis];
		spawnY = location[spawnLocation][enumLocation.yAxis];
	}
	
	#endregion
	
	#region Seal Randomisation
	
	var chosenSeal, randomSeal;
	
	randomSeal = irandom_range(0, 999); // To allow for more flexible chances instead of just two numbers. 
	
	if (room == rm_level1_1)
	{
		if (randomSeal >= 500)
		{
			chosenSeal = enumSeals.Empty;
		}
		if (randomSeal <= 499)
		{
			chosenSeal = enumSeals.Fish;
		}
	}
	
	#endregion
	
	switch (chosenSeal)
	{
		case (enumSeals.Empty):
			instance_create_layer(spawnX, spawnY, "Seals_Layer", obj_sealEmpty);
			exit;
			break;
		case (enumSeals.Fish):
			instance_create_layer(spawnX, spawnY, "Seals_Layer", obj_sealFish);
			exit;
			break;
		case (enumSeals.Ice):
			instance_create_layer(spawnX, spawnY, "Seals_Layer", obj_sealIce);
			exit;
			break;
		case (enumSeals.Bomb):
			instance_create_layer(spawnX, spawnY, "Seals_Layer", obj_sealBomb);
			exit;
			break;
	}
}