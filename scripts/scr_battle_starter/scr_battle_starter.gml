// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_battle_starter(_enemy){
	//room_goto(rm_battle);
	var _swapper = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_room_swapper);
	_swapper.target_x = obj_player.x;
	_swapper.target_y = obj_player.y;
	_swapper.target_rm = rm_battle;
	_swapper.target_face = DOWN;
	global.battleEnemy = _enemy;
}