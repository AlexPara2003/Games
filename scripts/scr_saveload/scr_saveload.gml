// Room saving
function save_room()
{
	// getting all savable objects in a room
	var _itemNum = instance_number(obj_overworld);
	
	var _roomStruct =
	{
		itemNum : _itemNum,
		itemData : array_create(_itemNum),
		
	}
	
	// Get the data from all savable objects
	
	// Items
	for(var i = 0; i < _itemNum; i++)
	{
		var _inst = instance_find(obj_overworld, i);
		
		_roomStruct.itemData[i] = 
		{
			x : _inst.x,
			y : _inst.y,
			sImage : _inst.image_index,
			sItem : _inst.item
		}
	}
	
	// Store _roomStruct in global.levelData variable for room
	if room == rm_test { global.levelData.level_1 = _roomStruct; };
	if room == rm_outside {global.levelData.level_2 = _roomStruct; };
	if room == rm_outside_west {global.levelData.level_3 = _roomStruct; };
	if room == rm_house {global.levelData.level_4 = _roomStruct; };
	if room == rm_glitch {global.levelData.level_5 = _roomStruct; };
	if room == rm_town {global.levelData.level_6 = _roomStruct; };
}

function load_room()
{
	var _roomStruct = 0;
	// get the struct for current room
	if room == rm_test { _roomStruct = global.levelData.level_1; };
	if room == rm_outside { _roomStruct = global.levelData.level_2; };
	if room == rm_outside_west { _roomStruct = global.levelData.level_3; };
	if room == rm_house { _roomStruct = global.levelData.level_4; };
	if room == rm_glitch { _roomStruct = global.levelData.level_5; };
	if room == rm_town { _roomStruct = global.levelData.level_6; };
	
	// EXIT if _roomStruct = 0
	if !is_struct(_roomStruct) { exit; };
	
	// Items
	if instance_exists(obj_overworld) { instance_destroy(obj_overworld); };
	for(var i = 0; i < _roomStruct.itemNum; i++) 
	{
		with( instance_create_layer(_roomStruct.itemData[i].x,_roomStruct.itemData[i].y, layer, obj_overworld) )
		{
			image_index = _roomStruct.itemData[i].sImage;
			item = _roomStruct.itemData[i].sItem;
		}
	}
}

// Game saving
function save_game(_fileNum = 0)
{
	var _saveArray = array_create(0);
	
	// save the room
	save_room();
	
	// set and save statData
	global.statData.save_x = obj_player.x;
	global.statData.save_y = obj_player.y;
	global.statData.save_rm = room_get_name(room);
	
	// Player Stat
	global.statData.playerMaxHP = global.playerMaxHP;
	global.statData.playerHP = global.playerHP;
	global.statData.playerMaxMP = global.playerMaxMP;
	global.statData.playerMP = global.playerMP;
	global.statData.playerAtk = global.playerAtk;
	global.statData.playerBaseAtk = global.playerBaseAtk;
	global.statData.playerDef = global.playerDef;
	global.statData.playerBaseDef = global.playerBaseDef;
	global.statData.playerLvl = global.playerLvl;
	
	global.statData.playerWeapon = global.playerWeapon;
	global.statData.playerArmor = global.playerArmor;
	
	global.statData.itemList = global.item_list;
	
	global.statData.item_inv = obj_item_loader.inv;
	
	array_push(_saveArray, global.statData);
	
	// save all the room data
	array_push(_saveArray, global.levelData);
	
	// actual saving
	var _filename = "savedata" + string(_fileNum) + ".sav";
	var _json = json_stringify(_saveArray);
	var _buffer = buffer_create(string_byte_length(_json) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _json);
	
	buffer_save(_buffer, _filename);
	
	buffer_delete(_buffer);
}

function load_game(_fileNum = 0)
{
	// loading saved data
	var _filename = "savedata" + string(_fileNum) + ".sav";
	if !file_exists(_filename) exit;
	
	// load the buffer and get json
	var _buffer = buffer_load(_filename);
	var _json = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	// "unstringify" the json
	var _loadArray = json_parse(_json);
	
	// set the game data to match load data
	global.statData = array_get(_loadArray, 0);
	global.levelData = array_get(_loadArray, 1);
	
	if(instance_exists(obj_settings)) 
	{
		instance_destroy(obj_settings);
		instance_create_depth(0, 0, 0, obj_settings);
	}
	else instance_create_depth(0, 0, 0, obj_settings);
	if(instance_exists(obj_item_loader)) 
	{
		instance_destroy(obj_item_loader);
		instance_create_depth(0, 0, 0, obj_item_loader);
	}
	else instance_create_depth(0, 0, 0, obj_item_loader);
	
	// Player Stat
	global.playerMaxHP = global.statData.playerMaxHP;
	global.playerHP = global.statData.playerHP;
	global.playerMaxMP = global.statData.playerMaxMP;
	global.playerMP = global.statData.playerMP;
	global.playerAtk = global.statData.playerAtk;
	global.playerBaseAtk = global.statData.playerBaseAtk;
	global.playerDef = global.statData.playerDef;
	global.playerBaseDef = global.statData.playerBaseDef;
	global.playerLvl = global.statData.playerLvl;
	
	global.playerWeapon = global.statData.playerWeapon;
	global.playerArmor = global.statData.playerArmor;
	
	global.item_list = global.statData.itemList;
	
	// Items
	obj_item_loader.inv = global.statData.item_inv;
	
	//for(int i = 0; i < item_inv.
	
	// placing player in correct spot
	var _loadRoom = asset_get_index(global.statData.save_rm);
	room_goto(_loadRoom);
	
	// make sure the game doesnt save room player is leaving
	obj_saveload.skipRoomSave = true;
	
	// create the player object
	if (instance_exists(obj_player))
	{
		instance_destroy(obj_player);
	};
	
	instance_create_depth(global.statData.save_x, global.statData.save_y, depth, obj_player);
	
	// load the room
	load_room();
}