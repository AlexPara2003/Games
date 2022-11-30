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
				//items
				case 0:
					menu_level = 1;
			        break;
				//status
				case 1: 
					menu_level = 2;
					break;
				//return
				case 2:
					alarm[0] = 10;
					break;
				case 3:
					game_end();
					break;
			}
		break;
		case 1:
		
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
					instance_destroy();
				}
			}
		break;
		case 2:
		switch(pos)
			{
				//status
				case 0:
					//code
			        break;
				case 4: menu_level = 0;;
					break;
				//return
				
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