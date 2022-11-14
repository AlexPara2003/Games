if(!instance_exists(obj_room_transition))
{
	var inst = instance_create_depth(0, 0, -9999, obj_room_transition);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_face = target_face;
	inst.target_rm = target_rm;
}