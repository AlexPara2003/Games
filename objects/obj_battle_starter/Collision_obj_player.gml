//obj_player.y -= 5;

global.lastRoomVisited = room;
//show_debug_message(room);

if(obj_player.x_speed != 0 || obj_player.y_speed != 0)
{
	show_debug_message(spawnTimer);
	spawnTimer -= dt;
	if(spawnTimer <= 0) scr_battle_starter(enemy);
}