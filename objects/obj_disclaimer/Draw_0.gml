/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_rectangle(x+3, y+6, x+5 + string_width(text), y+6 + string_height(text), false);
draw_set_color($0000d1);
draw_rectangle(x+4, y+7, x+4 + string_width(text), y+5 + string_height(text), false);
			
draw_set_color(c_white);
draw_text(x+5,y+7,text);