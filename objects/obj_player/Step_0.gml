up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
left_key = keyboard_check(vk_left);
right_key = keyboard_check(vk_right);
interact_key = keyboard_check(ord("Z"));

sprint_key = keyboard_check(vk_shift);
menu_key = keyboard_check_pressed(vk_escape);

//open menu
if(menu_key && !instance_exists(obj_pauser)) 
{
	instance_create_layer(x - 75, y - 50, "Instances", obj_pauseMenu);
}

//interact lots and lots of gross code
//to spawn the interact box (of doom)
if (!instance_exists(obj_pauser) && !instance_exists(obj_interact_square) && interact_key)
{
	var _interact_x;
	var _interact_y;
	switch (facing)
	{
		case LEFT:
		{
			_interact_x = x - 5;
			_interact_y = y - 5;
			break;
		}
		case RIGHT:
		{
			_interact_x = x + 5;
			_interact_y = y - 5;
			break;
		}
		case UP:
		{
			_interact_x = x;
			_interact_y = y - 15;
			break;
		}
		case DOWN:
		{
			_interact_x = x;
			_interact_y = y + 5;
			break;
		}
	}
	instance_create_layer(_interact_x, _interact_y, "Instances", obj_interact_square);
}

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

if(sprint_key) move_speed = 2;
else move_speed = 1;

mask_index = sprite[DOWN];

//object collision
if (place_meeting(x + x_speed, y, obj_wall_test))
{
	x_speed = 0;
}
if (place_meeting(x, y + y_speed, obj_wall_test))
{
	y_speed = 0;
}
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

//pauser
if(instance_exists(obj_pauser)) move_speed = 0;

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