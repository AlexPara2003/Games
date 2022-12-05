function item_add(_item){
	array_push(obj_item_loader.inv, _item);
}

function item_use(_item, _type){
	//show_debug_message(_item.name);
	switch(_item.name)
	{
		case "Wooden Sword":
		{
			global.playerAtk = global.playerBaseAtk + 1;
			break;
		}
		case "Iron Sword":
		{
			global.playerAtk = global.playerBaseAtk + 5;
			break;
		}
		case "Iron Armor":
		{
			global.playerDef = global.playerBaseDef + 5;
			break;
		}
		case "Lesser Health Potion":
		{
			global.playerHP += 5;
			if (global.playerHP > global.playerMaxHP) global.playerHP = global.playerMaxHP;
			if (instance_exists(obj_battle)) layer_sequence_create("Sequence", obj_player_battle.x, obj_player_battle.y, seq_heal);
			break;
		}
	}
	switch(_type){
		case "weapon":
		{
			if(global.playerWeapon != global.item_list.nothing) item_add(global.playerWeapon);
			global.playerWeapon = _item;
			break;
		}
		case "armor":
		{
			if(global.playerArmor != global.item_list.nothing) item_add(global.playerArmor);
			global.playerArmor = _item;
			break;
		}
	}
}