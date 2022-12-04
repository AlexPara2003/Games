if (event_data[? "event_type"] == "sequence event")
{
	switch(event_data[?"message"])
	{
		case "seqStart": 
		{
			if(instance_exists(obj_battle)) sprite_index = obj_battle.currentEnemy.enemySprite;
			break;
		}
	}
}