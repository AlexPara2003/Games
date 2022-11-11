up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
left_key = keyboard_check(ord("A"));
right_key = keyboard_check(ord("D"));

shift_key = keyboard_check(vk_shift);

//calculates the speed
x_speed = (right_key - left_key) * move_speed;
y_speed = (down_key - up_key) * move_speed;

if (y_speed == 0)
{
	if (x_speed > 0) facing = RIGHT;
	if (x_speed < 0) facing = LEFT;
}
if (x_speed > 0 && facing == LEFT) facing = RIGHT; 
if (x_speed < 0 && facing == RIGHT) facing = LEFT; 
if (x_speed == 0)
{
	if (y_speed > 0) facing = DOWN;
	if (y_speed < 0) facing = UP;
}
if (y_speed > 0 && facing == UP) facing = DOWN;
if (y_speed < 0 && facing == DOWN) facing = UP;
sprite_index = sprite[facing];

if(shift_key) move_speed = 2;
else move_speed = 1;

mask_index = sprite[DOWN];

////collisions
//if (place_meeting(x + x_speed, y, obj_wall_test))
//{
//	x_speed = 0;
//}
//if (place_meeting(x, y + y_speed, obj_wall_test))
//{
//	y_speed = 0;
//}
//tileset collision
if (tile_meeting(x + x_speed, y, "Wall")){
	while (!tile_meeting(x + sign(x_speed), y, "Wall")){
		x += sign(x_speed);
	}
	x_speed = 0;
}
if (tile_meeting(x, y + y_speed, "Wall")){
	while (!tile_meeting(x, y + sign(y_speed), "Wall")){
		y += sign(y_speed);
	}
	y_speed = 0;
}

//animation speed
if (x_speed == 0 && y_speed == 0)
{
	image_index = 0;
}
else
{
	//animation speed based off of running
	image_speed = move_speed;
}

//moves player
x += x_speed;
y += y_speed;

depth = -bbox_bottom;