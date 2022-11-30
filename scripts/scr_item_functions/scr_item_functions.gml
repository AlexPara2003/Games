// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_add(_item){
	array_push(obj_item_loader.inv, _item);
}

function item_use(_item, _type){
	_item.effect();
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