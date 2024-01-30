/// @description 

event_inherited();

if (!(score == 0)) // Taken from obj_resultsReturnButton
{
	score = 0;
	obj_coreGame.fishScore = 0;
}

room_goto(rm_levelSelection);