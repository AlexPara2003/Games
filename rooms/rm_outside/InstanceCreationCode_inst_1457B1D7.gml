var _randEnemy = irandom(100);

enemy = "Skeleton";

if (_randEnemy >= 90) 
{
	enemy = "Skeleton";
}
else if (_randEnemy >= 75) 
{
	enemy = "Eye";
}
else if (_randEnemy >= 40) 
{
	enemy = "Spider";
}
else 
{
	enemy = "Slime";
}

//switch(_randEnemy)
//{
//	case 0: enemy = "Skeleton"; break;
//	case 1: enemy = "Slime"; break;
//	case 1: enemy = "Spider"; break;
//	case 1: enemy = "Eye"; break;
//}

show_debug_message(enemy);