var _randEnemy = irandom(1);

enemy = "Skeleton"

switch(_randEnemy)
{
	case 0: enemy = "Skeleton"; break;
	case 1: enemy = "Slime"; break;
}

show_debug_message(enemy);