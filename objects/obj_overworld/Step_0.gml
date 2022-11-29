//sprite_index = item.sprite;

if place_meeting(x, y, obj_player){
	item_add(item);
	audio_play_sound(minecraft_drop_block_sound_effect, 1, false);
	instance_destroy();
}

float_dir += 0.1;
var _float_y = sin(float_dir + float_offset) * float_int;
y += _float_y;