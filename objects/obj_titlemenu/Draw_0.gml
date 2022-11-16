/// @description Displays Menu 
// You can write your code in this editor

draw_set_font(global.font_main);

//get dimensions of menu dynamically
var _new_w = 0;

for (var i = 0; i < op_length; i++)
{
	var	_op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
}

end_width = _new_w + op_border * 2;
width = lerp(width, end_width, .1);
height = op_border * 2 + string_height(option[0, 0]) + (op_length - 1) * op_space;

//center de menu on screen
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - end_width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2 + 10;


//draws menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/ sprite_height, 0, c_white, 1);

//draws option text
draw_set_valign(fa_top);
draw_set_halign(fa_left);
if(width >= end_width * .9){
	for (var i = 0; i < op_length; i++)
	{
		var _c = c_white;
		var _c2 = c_white;
		if (pos == i) 
		{
			_c = make_color_rgb(150,81,204);
			_c2 = make_color_rgb(113,61,153);
		}
		draw_text_color(x + op_border, y + op_border + op_space * i, option[menu_level, i], _c, _c, _c2, _c2, 1);
	}
}