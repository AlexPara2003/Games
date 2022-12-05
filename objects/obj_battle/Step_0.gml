enemyDispHP = lerp(enemyDispHP, enemyTempHP, .1);
playerDisHP = lerp(playerDisHP, playerTempHP, .1);

if (turnTimer <= 0)
{
	//turnTimer = dt * 500;
	//battleState++;
	//playerIdle = true;
}
else turnTimer -= dt;

switch(battleState)
{
	case battleStates.battle_start:
	{
		turnTimer = dt * 500;
		if (instance_exists(obj_enemy_battle))
		{
			obj_enemy_battle.sprite_index = currentEnemy.enemySprite;
			battleState = battleStates.player_turn;
			//show_debug_message("Player Turn");
		}
		break;
	}
	case battleStates.player_turn:
	{
		//show_debug_message(global.playerHP);
		if (global.playerHP > 0)
		{
			if(!instance_exists(obj_battleMenu))
			{
				turnTimer = dt * 500;
				show_debug_message("Player Turn");
				instance_create_layer(camera_get_view_x(view_camera[0]) + 1, camera_get_view_y(view_camera[0]) + 1, "Instances", obj_battleMenu);
				//battleState = battleStates.player_action;
			}
		}
		else battleState = battleStates.battle_lost;
		//show_debug_message("Battle Lost");
		break;
	}
	case battleStates.player_action:
	{
		if (instance_exists(obj_battleMenu)) instance_destroy(obj_battleMenu);
		//show_debug_message("Player Action");
		//battleState = battleStates.enemy_turn;
		//show_debug_message("Enemy Turn");
		break;
	}
	case battleStates.enemy_turn:
	{
		if (enemyCurrentHP > 0)
		{
			enemyTempDef = currentEnemy.enemyDef;
			enemyAction = irandom(100);
			show_debug_message(enemyAction);
			if (enemyAction >= 40) 
			{
				enemyChoice = "attack";
				global.playerHP -= (currentEnemy.enemyAtk - global.playerDef);
			}
			else if (enemyAction >= 5 && enemyAction < 40) 
			{
				enemyChoice = "defend";
				enemyTempDef *= 2;
			}
			else enemyChoice = "flee";
			
			battleState = battleStates.enemy_action;
			show_debug_message("Enemy Action");
		}
		else battleState = battleStates.battle_won;
		//show_debug_message("Battle Won");
		break;
	}
	case battleStates.enemy_action:
	{
		if (enemyChoice != "nothing") show_debug_message(enemyChoice);
		switch (enemyChoice)
		{
			case "attack":
			{
				switch (currentEnemy.enemyType)
				{
					case "melee":
					{
						layer_sequence_create("Sequence", obj_player_battle.x, obj_player_battle.y, seq_enemy_generic);
						break;
					}
					case "ranged":
					{
						layer_sequence_create("Sequence", obj_player_battle.x, obj_player_battle.y, seq_enemy_arrow);
						break;
					}
				}
				
				enemyChoice = "nothing";
				break;
			}
			case "defend":
			{
				battleState = battleStates.round_over;
				enemyChoice = "nothing";
				break;
			}
			case "flee":
			{
				battleState = battleStates.round_over; // not implemented yet
				enemyChoice = "nothing";
				break;
			}
		}
		//battleState = battleStates.player_turn;
		//show_debug_message("Player Turn");
		break;
	}
	case battleStates.round_over:
	{
		battleState = battleStates.player_turn;
		break;
	}
	case battleStates.battle_won:
	{
		if(!layer_sequence_exists("Sequence", seq_room_in)) layer_sequence_create("Sequence", obj_player_battle.x, obj_player_battle.y, seq_room_in);
		show_debug_message("Battle Won");
		break;
	}
	case battleStates.battle_lost:
	{
		load_game(0);
		show_debug_message("Battle Lost");
		break;
	}
}