if(instance_exists(obj_player))
{
	obj_player.x = room_width / 2;
	obj_player.y = room_height / 2;
}

if(!instance_exists(obj_textbox))
{
	show_message("he is watching");
	var _he_is_watching = _he_sees_all;
}