// Room saving
function save_room()
{
	// getting all savable objects in a room
	var _coinNum = instance_number(obj_coin);
	
	var _roomStruct =
	{
		coinNum : _coinNum,
		coinData : array_create(_coinNum),
		
	}
	
	// Get the data from all savable objects
	
	// Coins
	for (var i = 0; i < _coinNum; i++)
	{
		var _inst = instance_find(obj_coin, i);
		
		_roomStruct.coinData[i] =
		{
			x : _inst.x,
			y : _inst.y
		}
	}
	
	// Store _roomStruct in global.levelData variable for room
	if room == rm_test { global.levelData.level_1 = _roomStruct; };
	if room == rm_outside {global.levelData.level_2 = _roomStruct; };
	if room == rm_outside_west {global.levelData.level_3 = _roomStruct; };
	if room == rm_house_test {global.levelData.level_4 = _roomStruct; };
}

function load_room()
{
	var _roomStruct = 0;
	// get the struct for current room
	if room == rm_test { _roomStruct = global.levelData.level_1; };
	if room == rm_outside { _roomStruct = global.levelData.level_2; };
	if room == rm_outside_west { _roomStruct = global.levelData.level_3; };
	if room == rm_house_test { _roomStruct = global.levelData.level_4; };
	
	// EXIT if _roomStruct = 0
	if !is_struct(_roomStruct) { exit; };
	
	// Coins
	if instance_exists(obj_coin) { instance_destroy(obj_coin); };
	
	for (var i = 0; i < _roomStruct.coinNum; i++)
	{
		instance_create_depth(_roomStruct.coinData[i].x, _roomStruct.coinData[i].y, depth, obj_coin);
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
	
	global.statData.coins = global.coins;
	
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
	
	global.coins = global.statData.coins;
	
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