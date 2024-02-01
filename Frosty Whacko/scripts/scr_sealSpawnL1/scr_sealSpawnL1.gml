// Function Below
function scr_sealSpawnL1() // For the Levels 1-1 and Beyond in the Level 1 section.
// This is done due to how the holes are layed out and would require a different function if higher levels or endless.
// This can all be put into this function with clever coding. If I get around to it, like having different location
// Arrays for different layouts that would be communicated through the variables passed through.

{
	#region Enums
	
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
	
	#endregion
	
	#region Location Check/Spawning
	
	location = [];
	// First Row Of Level 1-1
	location[0][enumLocation.xAxis] = 176;
	location[0][enumLocation.yAxis] = 96;
	location[1][enumLocation.xAxis] = 240;
	location[1][enumLocation.yAxis] = 96;
	location[2][enumLocation.xAxis] = 304;
	location[2][enumLocation.yAxis] = 96;	
	// Second Row of Level 1-1
	location[3][enumLocation.xAxis] = 176;
	location[3][enumLocation.yAxis] = 160;
	location[4][enumLocation.xAxis] = 240;
	location[4][enumLocation.yAxis] = 160;
	location[5][enumLocation.xAxis] = 304;
	location[5][enumLocation.yAxis] = 160;
	
	// Extended Rows for Level Endless
	// Row 3
	location[6][enumLocation.xAxis] = 176;
	location[6][enumLocation.yAxis] = 224;
	location[7][enumLocation.xAxis] = 240;
	location[7][enumLocation.yAxis] = 224;
	location[8][enumLocation.xAxis] = 304;
	location[8][enumLocation.yAxis] = 224;
	
	// Column 4
	location[9][enumLocation.xAxis] = 368;
	location[9][enumLocation.yAxis] = 96;
	location[10][enumLocation.xAxis] = 368;
	location[10][enumLocation.yAxis] = 160;
	location[11][enumLocation.xAxis] = 368;
	location[11][enumLocation.yAxis] = 224;
	
	// Column 5
	location[12][enumLocation.xAxis] = 432;
	location[12][enumLocation.yAxis] = 96;
	location[13][enumLocation.xAxis] = 432;
	location[13][enumLocation.yAxis] = 160;
	location[14][enumLocation.xAxis] = 432;
	location[14][enumLocation.yAxis] = 224;
	
	switch (room)
	{
		case (rm_level1_1):
			var spawnLocation = irandom_range(0, 5);
			break;
		case (rm_levelEndless):
			var spawnLocation = irandom_range(0, 14);
			break;
	}
	
	var spawnX = location[spawnLocation][enumLocation.xAxis];
	var spawnY = location[spawnLocation][enumLocation.yAxis];
	
	
	#endregion
	
	#region Seal Randomisation
	
	var chosenSeal, randomSeal;
	
	randomSeal = irandom_range(0, 999); // To allow for more flexible chances instead of just two numbers. 
	
	switch (room)
	{
		case (rm_level1_1):
			if (randomSeal >= 500)
			{
				chosenSeal = enumSeals.Empty;
			}
			if (randomSeal <= 499)
			{
				chosenSeal = enumSeals.Fish;
			}
			break;
		case (rm_levelEndless):
			if (clamp(randomSeal, 986, 999) == randomSeal)
			{
				chosenSeal = enumSeals.Bomb;
			}
			if (clamp(randomSeal, 0, 15) == randomSeal)
			{
				chosenSeal = enumSeals.Ice;
			}
			if (clamp(randomSeal, 16, 497) == randomSeal)
			{
				chosenSeal = enumSeals.Fish;
			}
			if (clamp(randomSeal, 498, 985) == randomSeal) // Clamp checks the range
			{
				chosenSeal = enumSeals.Empty;
			}
			break;
			
	}
	#endregion
	
	switch (chosenSeal)
	{
		case (enumSeals.Empty):
			instance_create_layer(spawnX, spawnY, "Seals_Layer", obj_sealEmpty, {image_xscale: 1.5, image_yscale: 1.5});
			exit;
			break;
		case (enumSeals.Fish):
			instance_create_layer(spawnX, spawnY, "Seals_Layer", obj_sealFish, {image_xscale: 1.5, image_yscale: 1.5});
			exit;
			break;
		case (enumSeals.Ice):
			instance_create_layer(spawnX, spawnY, "Seals_Layer", obj_sealIce, {image_xscale: 1.5, image_yscale: 1.5});
			exit;
			break;
		case (enumSeals.Bomb):
			instance_create_layer(spawnX, spawnY, "Seals_Layer", obj_sealBomb, {image_xscale: 1.5, image_yscale: 1.5});
			exit;
			break;
	}
}