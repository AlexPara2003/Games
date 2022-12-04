// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hide_fighters(){
	if(instance_exists(obj_player_battle) && instance_exists(obj_enemy_battle))
	{
		obj_player_battle.visible = false;
		obj_enemy_battle.visible = false;
	}
}
function scr_show_fighters(){
	if(instance_exists(obj_player_battle) && instance_exists(obj_enemy_battle))
	{
		obj_player_battle.visible = true;
		obj_enemy_battle.visible = true;
	}
}

function get_enemy()
{
	show_debug_message("Get enemy");
	if(instance_exists(obj_battle) && instance_exists(obj_enemy_battle)) 
	{
		obj_enemy_battle.sprite_index = obj_battle.currentEnemy.enemySprite;
	}
}