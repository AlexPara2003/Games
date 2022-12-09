/// @description Sets Menu Contents
// You can write your code in this editor

width = 100;
height = 75;

op_border = 10;
op_space = 30;

pos = 0;

option[0, 0] = "Attack";
option[0, 1] = "Defend";
option[0, 2] = "Items";
option[0, 3] = "Flee";


items = 0;
for(var i = 0; i < array_length(obj_item_loader.inv); i++)
{
	option[3, i] = obj_item_loader.inv[i].name;
	items++;
}

option[3, i] = "Return";

op_length = 0;
menu_level = 0;

depth = -99999;

