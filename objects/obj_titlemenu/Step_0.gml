
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
select_key = keyboard_check_pressed(ord("Z"));

//store number of options in current menu level
op_length = array_length(option[menu_level]);

//move through menu
if(width >= end_width * .9) { pos += down_key - up_key; }
//lets you loop through menu
if (pos >= op_length) {pos = 0};
if (pos < 0) {pos = op_length - 1};

//play menu sound
if((up_key || down_key) && width >= end_width * .9)
{
	audio_play_sound(snd_select, 100, false);
}

//select options
if (select_key && width >= end_width * .9)
{
	var _sml = menu_level;
	switch(menu_level)
	{
		//main menu
		case 0:
			switch(pos)
			{
				//start game
				case 0:
					room_goto(rm_house); break;
				//settings
				//case 1: menu_level = 1; break;
				case 1: game_end(); break;
			}
		break;
		
		//settings
		case 1:
			switch(pos)
			{
				//WIP - probably won't add...
				case 0:
				
					break;
				//window size
				case 1:
				
					break;
				//brightness
				case 2:
					break;
				//controls
				case 3:
					break;
					//back
				case 4:
					menu_level = 0; 
					break;
			}
	}
	
	//sets the menu pos back to 0
	if (_sml != menu_level) {pos = 0};
	
	//corrects option length so it doesn't go out of bounds
	op_length = array_length(option[menu_level]);
	audio_play_sound(snd_confirm, 100, false);
}
