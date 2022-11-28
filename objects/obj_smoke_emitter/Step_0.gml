if ( smoke_timer <= 0)
{
	instance_create_depth(x, y, -5000, obj_smoke);
	smoke_timer = random_range(2, 4);
}
smoke_timer -= delta_time / 1000000;