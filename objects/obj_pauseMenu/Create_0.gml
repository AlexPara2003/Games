/// @description Sets Menu Contents
// You can write your code in this editor

width = 100;
height = 75;

op_border = 10;
op_space = 15;

pos = 0;

option[0, 0] = "Items";
option[0, 1] = "Status";
option[0, 2] = "Save";
option[0, 3] = "Load";
option[0, 4] = "Return";
option[0, 5] = "Close Game";

items = 0;
for(var i = 0; i < array_length(obj_item_loader.inv); i++)
{
	option[1, i] = obj_item_loader.inv[i].name;
	items++;
}

option[1, items] = "Return";

option[2, 0] = "HP: " + string(global.playerHP) + "/" + string(global.playerMaxHP);
option[2, 1] = "MP: " + string(global.playerMP) + "/" + string(global.playerMaxMP);
option[2, 2] = "ATK: " + string(global.playerAtk);
option[2, 3] = "DEF: " + string(global.playerDef);
option[2, 4] = "LVL: " + string(global.playerLvl);
option[2, 5] = "Return";

op_length = 0;
menu_level = 0;

depth = -99999;

