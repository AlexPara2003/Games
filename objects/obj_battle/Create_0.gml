if (instance_exists(obj_player)) obj_player.visible = false;

enum battleStates
{
	battle_start,
	player_turn,
	player_action,
	enemy_turn,
	enemy_action,
	round_over,
	battle_won,
	battle_lost,
	battle_end
}

battleState = battleStates.battle_start;

//Item constructor
function create_enemy(_name, _spr, _text, _hp, _atk, _def, _type) constructor
{
	enemyName = _name;
	enemySprite = _spr;
	enemyText = _text;
	enemyHP = _hp;
	enemyAtk = _atk;
	enemyDef = _def;
	enemyType = _type;
}

global.enemy_list = 
	{
		slime : new create_enemy(
			"Slime", 
			Slime_1,
			"This is testing text",
			10,
			5,
			1,
			"melee"
		),
		skeleton : new create_enemy(
			"Skeleton", 
			Skeleton_1,
			"This is testing text",
			20,
			7,
			2,
			"ranged"
		)
	}

currentEnemy = global.enemy_list.skeleton;
enemyTempDef = currentEnemy.enemyDef
enemyCurrentHP = currentEnemy.enemyHP;
enemyTempHP = enemyCurrentHP;
enemyDispHP = enemyCurrentHP;
enemyChoice = "attack";

playerTempHP = global.playerHP;
playerDisHP = global.playerHP

//battleSequence = "playerAttack";


enemyAction = 0;