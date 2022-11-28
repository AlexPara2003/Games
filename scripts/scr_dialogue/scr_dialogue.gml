function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		case "test":
		{
			scr_text("Hello I am a sign.");
				scr_text_color(13, 16, c_red, c_red, c_red, c_red);
			scr_text("or am I???");
				scr_text_shake(0,9);
			break;
		}
		case "sign":
		{
			scr_text("^ North - Village");
			scr_text("> East - Castle");
			scr_text("< West - House");
			break;
		}
		case "sign - construction":
		{
			scr_text("-Under construction-");
			break;
		}
		default:
		{
			scr_text("There is nothing of note here...");
		}
	}
}