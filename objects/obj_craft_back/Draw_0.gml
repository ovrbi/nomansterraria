/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(.5);
draw_sprite(sp_craft_back,0,x,y);
draw_set_alpha(1);

draw_sprite(sp_craft_lines,3 - mat_count,x,y);

draw_set_color(c_black);
draw_rectangle(x-72, y-62, x-70 + string_width(obj_idb.name[idee]), y-54, false); //x + 2; y + 8								
draw_set_color($bd9956);
draw_rectangle(x-71, y-61, x-71 + string_width(obj_idb.name[idee]), y-55, false);
draw_set_color(c_white);
draw_text(x-70,y-61,obj_idb.name[idee]);

if (string_width(obj_idb.name[slot_id[chosen]]) < 77)
{
	draw_set_color(c_black);
	draw_rectangle(x-7, y-1, x-5 + 77, y+7, false); //x + 2; y + 8								
	draw_set_color($bd9956);
	draw_rectangle(x-6, y, x-6 + 77, y+6, false);
}
else
{
	draw_set_color(c_black);
	draw_rectangle(x-7, y-1, x-5 + string_width(obj_idb.name[slot_id[chosen]]), y+7, false); //x + 2; y + 8								
	draw_set_color($bd9956);
	draw_rectangle(x-6, y, x-6 + string_width(obj_idb.name[slot_id[chosen]]), y+6, false);
}
draw_set_color(c_white);
draw_text(x-5,y,obj_idb.name[slot_id[chosen]]);
draw_text(x-8,y+9,obj_idb.desc[slot_id[chosen]]);


//draw_text(x,y,"what");