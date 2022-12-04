/// @description Move Through Menu
// You can write your code in this editor

up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
select_key = keyboard_check_pressed(ord("Z"));

close_key = keyboard_check_pressed(vk_escape);

//store number of options in current menu level
op_length = array_length(option[menu_level]);

if(close_key) alarm[0] = 10;

pos += down_key - up_key; 
//play sound
if (up_key || down_key) audio_play_sound(snd_select, 100, false);

//lets you loop through menu
if (pos >= op_length) {pos = 0};
if (pos < 0) {pos = op_length - 1};

if (x < 0) x = 0;
if (y < 0) y = 0;

if(menu_level == 2) pos = 5;

//select options only when menu is on screen & (almost) not moving
if (select_key)
{
	var _sml = menu_level;
	switch(menu_level)
	{
		//main menu
		case 0:
			switch(pos)
			{
				//attack
				case 0:
					//menu_level = 1;
					layer_sequence_create("Sequence", obj_player_battle.x, obj_player_battle.y, seq_attack);
					obj_battle.battleState = battleStates.player_action;
					obj_battle.enemyCurrentHP -= (global.playerAtk - obj_battle.enemyTempDef);
					instance_destroy();
			        break;
				//spells
				case 1: 
					//menu_level = 2;
					
					//not implimented yet
					break;
				//items
				case 2:
					menu_level = 3;
					break;
				case 3:
					var _flee = irandom(100);
					if (_flee > 70) 
					{
						if(!layer_sequence_exists("Sequence", seq_room_in)) 
						{
							layer_sequence_create("Sequence", obj_player_battle.x, obj_player_battle.y, seq_room_in);
							obj_battle.battleState = battleStates.player_action;
						}
					}
					else 
					{
						show_debug_message("flee failed");
						show_debug_message(_flee);
						obj_battle.battleState = battleStates.enemy_turn;
					}
					instance_destroy();
					break;
			}
		break;
		case 3:
		switch(pos)
			{
				//return
				case items: 
					menu_level = 0;
					break;
				default:
				{
					var _item = obj_item_loader.inv[pos];
					item_use(_item, _item.itemType);
					array_delete(obj_item_loader.inv, pos, 1);
					obj_battle.battleState = battleStates.enemy_turn;
					instance_destroy();
				}
			}
		break;
		menu_level = 0;
	}
	
	//sets the menu pos back to 0
	if (_sml != menu_level) {pos = 0};
	
	//corrects option length so it doesn't go out of bounds
	op_length = array_length(option[menu_level]);
	audio_play_sound(snd_confirm, 100, false);
}