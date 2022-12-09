switch (room)
{
	case rm_start_screen:
	{			
		prev_music = music;
		music = Dungeon___Cadaverous_Calm;
		break;
	}
	case rm_house:
	{
		prev_music = music;
		music = Town___Bandit_Hideout;
		break;
	}
	case rm_outside_west:
	{
		prev_music = music;
		music = Dungeon___Corrupted_Glade;
		break;
	}
	case rm_outside:
	{
		prev_music = music;
		music = Dungeon___Corrupted_Glade;
		break;
	}
	case rm_town:
	{
		prev_music = music;
		music = Town___Last_Village;
		break;
	}
	case rm_glitch:
	{
		prev_music = music;
		music = Theme___Opening_The_Portal;
		audio_play_sound(snd_static, 10, true);
		break;
	}
	case rm_battle:
	{
		prev_music = music;
		music = Battle___Spider_Slayer;
		break;
	}
	default:
	{
		music = 0;
	}
}

if (music != 0 && music != prev_music) 
{
	audio_stop_sound(prev_music);
	audio_play_sound(music, 10, true);
}
if (music == 0)
{
	audio_stop_sound(prev_music);
}
