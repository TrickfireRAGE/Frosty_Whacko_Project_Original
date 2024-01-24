/// @description ???

if (!place_empty(x, y))
{
	instance_destroy();
}

image_speed = 1;
image_index = 0;
difficultyTimer = 3.5; 
// ^ This variable allows this to be changed if necessary in the future for faster or slower seals.
// ^ Will decrease time with higher levels. Consider using switch to customise this.


alarm_set(0, room_speed * difficultyTimer);



