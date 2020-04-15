/// @description Insert description here
//ui
draw_set_font(font0);
draw_set_color(c_black);

draw_text(x + 1 - 160,y + 1 - 90,"HP: " + string(obj_player.hp) + "/" + string(obj_player.maxhp));
draw_text(x + 1 - 160,y + 7 - 90,string(mouse_mode));