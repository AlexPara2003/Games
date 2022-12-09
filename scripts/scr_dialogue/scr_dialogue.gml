function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		case "smith_house":
		{
			scr_text("Mayurs Forge");
			break;
		}
		case "sink":
		{
			scr_text("It hasn't worked for months");
			break;
		}
		case "stove":
		{
			scr_text("It's still hot");
			break;
		}
		case "apple_box":
		{
			scr_text("It is filled with apples");
			break;
		}
		case "wine":
		{
			scr_text("I lost the key to the wine");
			break;
		}
		case "fireplace":
		{
			scr_text("It's filled with ash");
			break;
		}
		case "well":
		{
			scr_text("Ohh no Lil' Alex!");
			scr_text("(you can hear a child wailing in the depths)");
			break;
		}
		case "red_mushroom":
		{
			scr_text("It smells like purple");
			break;
		}
		case "purple_mushroom":
		{
			scr_text("It smells like red");
			break;
		}
		case "yellow_mushroom":
		{
			scr_text("It actually tastes like yellow!");
			break;
		}
		case "red_flower":
		{
			scr_text("It smells like roses");
			break;
		}
		case "mayor":
		{
			scr_text("Welcome to Wellton. A town where nothing happens.");
			scr_text("? Are you okay you don't look too good.");
				scr_option("Yes", "mHealth - Yes");
				scr_option("No", "mHealth - No");
				break;
		}
			case "mHealth - Yes":
			{
				scr_text("Ok just make sure you don't push yourself");
				break;
			}
			case "mHealth - No":
			{
				scr_text("That's not good. Have a potion.")
				item_add(global.item_list.lesser_health_potion);
				break;
			}
		case "smith":
		{
			scr_text("Welcome to the best blacksmith on this side of nowhere.");
			scr_text("How'd you even get here with such a damaged weapon.");
				scr_option("It's gotten me this far.", "sGood");
				scr_option("It could be better.", "sBad");
				break;
		}
			case "sGood":
				{
					scr_text("Just remember I'm here selling better weapons once that one wears down.");
					break;
				}
			case "sBad":
				{
					scr_text("Seeing as you're the first person to come here in a while I can't just 'ave you dying on me.");
					scr_text("Here I'll let you have this sword.");
					item_add(global.item_list.iron_sword);
					break;
				}
		case "wall":
		{
		scr_text("This is just a normal wall.....");
		scr_text("Or is it?");
			scr_option("Yes", "wall - Yes");
			scr_option("No", "wall - No");
		break;
		}
			case("wall - Yes"):
				{
					scr_text("Indeed");
					break;
				}
			case("wall - No"):
				{
					scr_text("What?");
					break;
				}	
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
		case "glitch":
		{
			scr_text("he is watching", "glitch");
				//scr_text_shake()
				//scr_text_color(0, 13, c_black, c_black, c_black, c_black);
				scr_text_float(0, 13, 0.5, 0.5);
				scr_text_shake(0, 13);
			scr_text("he is watching", "glitch");
				//scr_text_shake()
				//scr_text_color(0, 13, c_black, c_black, c_black, c_black);
				scr_text_float(0, 13, 0.5, 0.5);
				scr_text_shake(0, 13);
			scr_text("he is watching", "glitch");
				//scr_text_shake()
				scr_text_color(0, 13, c_black, c_black, c_black, c_black);
				scr_text_float(0, 13, 0.5, 0.5);
				scr_text_shake(0, 13);
			scr_text("he is watching", "glitch");
				//scr_text_shake()
				scr_text_color(0, 13, c_red, c_red, c_red, c_red);
				scr_text_float(0, 13, 0.5, 0.5);
				scr_text_shake(0, 13);
			break;
		}
		case "book":
		{
			scr_text("This is the book of Lore.");
			scr_text("LLLOOORRREEEE!!!!");
			scr_text_shake(0, 18);
			scr_text_float(0, 18, 10, 2);
		}
		default:
		{
			scr_text("There is nothing of note here...");
		}
	}
}