
function scr_set_defaults_for_text()
{
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	//variables for every letter/character
	for (var c = 0; c < 500; c++)
	{
		col_1[c, page_number] = c_white;
		col_2[c, page_number] = c_white;
		col_3[c, page_number] = c_white;
		col_4[c, page_number] = c_white;
		
		float_text[c, page_number] = 0;
		float_dir[c, page_number] = c*20;
		float_speed[c, page_number] = -6;
		float_int[c, page_number] = 1;
		
		shake_text[c, page_number] = 0;
		shake_dir[c, page_number] = irandom(360);
		shake_timer[c, page_number] = irandom(4);
	}
	
	txtb_spr[page_number] = spr_textbox_default;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = snd_keyboard;
}

//text VFX
/// @param 1st_char
/// @param last_char
/// @param col_1
/// @param col_2
/// @param col_3
/// @param col_4
function scr_text_color(_start, _end, _col_1, _col_2, _col_3, _col_4)
{
	for (var c = _start; c <= _end; c++)
	{
		col_1[c, page_number-1] = _col_1;
		col_2[c, page_number-1] = _col_2;
		col_3[c, page_number-1] = _col_3;
		col_4[c, page_number-1] = _col_4;
	}
}

/// @param 1st_char
/// @param last_char
/// @param float_speed
/// @param float_intinsity
function scr_text_float(_start, _end, _speed, _intinsity)
{
	for (var c = _start; c <= _end; c++)
	{
		float_text[c, page_number-1] = true;
		float_speed[c, page_number-1] = _speed;
		float_int[c, page_number-1] = _intinsity;
	}
}

/// @param 1st_char
/// @param last_char
function scr_text_shake(_start, _end)
{
	for (var c = _start; c <= _end; c++)
	{
		shake_text[c, page_number-1] = true;
	}
}

/// @param text
/// @param [character]
/// @param [side]
function scr_text(_text)
{
	scr_set_defaults_for_text();
	text[page_number] = _text;
	
	//get character info
	if (argument_count > 1)
	{
		switch(argument[1])
		{
			case "default":
			{
				speaker_sprite[page_number] = spr_portrait_test_neutral;
				txtb_spr[page_number] = spr_textbox_default;
				snd[page_number] = snd_keyboard;
				break;
			}
			case "angry":
			{
				speaker_sprite[page_number] = spr_portrait_test_angry;
				txtb_spr[page_number] = spr_textbox_default;
				snd[page_number] = snd_keyboard;
				//speaker_side[page_number] = -1;
				break;
			}
		}
	}
	//side the character is on
	if (argument_count > 2)
	{
		speaker_side[page_number] = argument[2];
	}
	page_number++;
}

/// @param option
/// @param link_id
function scr_option(_option, _link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

// @param text_id
function create_textbox(_text_id)
{
	with(instance_create_depth(0, 0, -9999, obj_textbox))
	{
		scr_game_text(_text_id);
	}
}