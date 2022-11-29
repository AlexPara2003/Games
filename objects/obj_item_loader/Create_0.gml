depth = -9999

global.font = font_add_sprite(spr_font_main, 32, true, 1)
//Item constructor
function create_item(_name, _desc, _spr, _effect) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
	effect = _effect
}

global.item_list = 
	{
	//Frame 52
	wooden_sword : new create_item(
	"Wooden Sword", 
	"Very basic sword. It's better than nothing I guess.", 
	sprite_index = spr_items,
	function()
		{
			obj_player.attack += 1;
		}
	),

		
	iron_sword : new create_item(
	"Iron Sword",
	"Capable of cutting down even the sturdiest of goblins",
	sprite_index = spr_items, 
	image_index = 2,
	function()
		{
			obj_player.attack += 5;
		}
	),
	
	lesser_health_potion : new create_item(
		"Lesser Health Potion", 
		"Used to heal small cuts and bruises", 
		sprite_index = spr_temp_items,
		image_index = 3,
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