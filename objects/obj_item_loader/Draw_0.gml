draw_set_font(global.font_main);

for(var i = 0; i < array_length(inv); i++){

	var _xx = screen_bord;
	var _yy = screen_bord;
	var _sep = sep;
	var _col = c_white;

	//Icon
	draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep * i);
	
	//Get "selected" color
	if selected_item == i{ _col = c_yellow;};
	draw_set_color(_col);
	
	//Name
	draw_text(_xx + 16, _yy + _sep * i, inv[i].name);
	
	//Description
	if selected_item == i
	{
	draw_text_ext(_xx, _yy + _sep* array_length(inv), inv[i].description, 12, 80)
	}
	
	//Reset color to white
	draw_set_color(c_white);
}