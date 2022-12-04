if (event_data[? "event_type"] == "sequence event")
{
	switch(event_data[?"message"])
	{
		case "seqStart": 
		{
			scr_hide_fighters();
			break;
		}
		case "seqEnd": 
		{
			scr_show_fighters(); 
			battleState++;
			break;
		}
		case "swapRoom":
		{
			room_goto(global.lastRoomVisited);
			layer_sequence_create("Instances", obj_player_battle.x, obj_player_battle.y, seq_room_out);
			if (instance_exists(obj_player)) obj_player.visible = true;
			break;
		}
		case "enemyHit":
		{
			enemyTempHP = enemyCurrentHP;
		}
		case "playerHit":
		{
			playerTempHP = global.playerHP;
		}
	}
}
