// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_battle_starter(_enemy){
	room_goto(rm_battle);
	global.battleEnemy = _enemy;
}