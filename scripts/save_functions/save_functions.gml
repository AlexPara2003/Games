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
	if room == Room1 { global.levelData.level_1 = _roomStruct; };
}

function load_room()
{
	var _roomStruct = 0;
	// get the struct for current room
	if room == Room1 { _roomStruct = global.levelData.level_1; };
	
	// EXIT if _roomStruct = 0
	if !is_struct(_roomStruct) { exit; };
	
	// Coins
	if instance_exists(obj_coin) { instance_destroy(obj_coin); };
	
	for (var i = 0; i < _roomStruct.coinNum; i++)
	{
		instance_create_depth(_roomStruct.coinData[i].x, _roomStruct.coinData[i].y, depth, obj_coin);
	}
}