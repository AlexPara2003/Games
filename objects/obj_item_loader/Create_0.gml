depth = -9999;

global.font = font_add_sprite(spr_font_main, 32, true, 1)
//Item constructor
function create_item(_name, _desc, _spr, _frame, _effect) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
	frameNum = _frame;
	effect = _effect
}

global.item_list = 
	{
	//Frame 52
		wooden_sword : new create_item(
		"Wooden Sword", 
		"Very basic sword. It's better than nothing I guess.", 
		spr_items,
		51,
		function()
		{
			obj_player.attack += 1;
		}
	),
	
	iron_sword : new create_item(
		"Iron Sword",
		"Capable of cutting down even the sturdiest of goblins",
		spr_items, 
		40,
		function()
		{
			obj_player.attack += 5;
		}
	),
	
	lesser_health_potion : new create_item(
		"Lesser Health Potion", 
		"Used to heal small cuts and bruises", 
		spr_items,
		309,
		function()
		{
			obj_player.health += 5;
			
			array_delete(inv, selected_item, 1);
		}
	)
}

//Create the inventory
inv = array_create(0);

selected_item = -1;

//For drawing and mouse positions
sep = 16;
screen_bord = 16;