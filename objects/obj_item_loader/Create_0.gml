depth = -9999;

global.font = font_add_sprite(spr_font_main, 32, true, 1)
//Item constructor
function create_item(_name, _desc, _spr, _frame, _effect, _type) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
	frameNum = _frame;
	effect = _effect
	itemType = _type;
}

global.item_list = 
	{
	//Frame 52
		wooden_sword : new create_item(
		"Wooden Sword", 
		"Very basic sword. It's better than nothing I guess.", 
		spr_items,
		52,
		function()
		{
			global.playerAtk = global.playerBaseAtk + 1;
		},
		"weapon"
	),
	
	iron_sword : new create_item(
		"Iron Sword",
		"Capable of cutting down even the sturdiest of goblins",
		spr_items, 
		41,
		function()
		{
			global.playerAtk = global.playerBaseAtk + 5;
		},
		"weapon"
	),
	
	iron_armor : new create_item(
		"Iron Armor",
		"Capabale of protecting you from some damage, sometimes spelt with a 'u'.",
		spr_items, 
		30,
		function()
		{
			global.playerDef = global.playerBaseDef + 5;
		},
		"armor"
	),
	
	lesser_health_potion : new create_item(
		"Lesser Health Potion", 
		"Used to heal small cuts and bruises", 
		spr_items,
		310,
		function()
		{
			global.playerHP += 5;
			if (global.playerHP > global.playerMaxHP) global.playerHP = global.playerMaxHP;
			//array_delete(inv, selected_item, 1);
		},
		"consumable"
	),
	
	nothing : new create_item(
		"Nothing", 
		"It's empty. Like my soul.", 
		spr_items,
		0,
		function()
		{
			//nothing happens. you're disapointed.
		},
		"nothing"
	)
}

//Create the inventory
inv = array_create(0);

selected_item = -1;

//For drawing and mouse positions
sep = 16;
screen_bord = 16;

global.playerWeapon = global.item_list.nothing;
global.playerArmor = global.item_list.nothing;