var ww = window_get_width() / 2;

var pc;
pc = (enemyDispHP / currentEnemy.enemyHP) * 100;
draw_set_alpha(1);
draw_healthbar(ww - 100, 100, ww, 100 + 5, pc, c_red, c_gray, c_lime, 0, true, true);

pc = (playerDisHP / global.playerMaxHP) * 100;
draw_set_alpha(1);
draw_healthbar(ww - 100, 50, ww, 50 + 5, pc, c_red, c_gray, c_lime, 0, true, true);