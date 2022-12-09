var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

draw_sprite_tiled(sprite_index, image_index, _camx, _camy);

if (image_speed == 0)
{
	draw_set_font(global.font_title);
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	//draw_set_alpha(image_alpha);	

	alpha = lerp(alpha, 1, .05);
	var _c = c_purple;
	draw_text_color(x, y, text, _c, _c, _c, _c, alpha);
}