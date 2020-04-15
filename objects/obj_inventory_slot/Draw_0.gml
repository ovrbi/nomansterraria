/// @description Insert description here
// You can write your code in this editor
draw_self();

if (obj_idb.sprite[obj_camera.inv_id[idee]] != -1) draw_sprite(obj_idb.sprite[obj_camera.inv_id[idee]],-1,x,y);
draw_set_font(font0);
draw_set_halign(fa_center);
if (obj_idb.stack[obj_camera.inv_id[idee]] > 1) draw_text(x,y+10,string(obj_camera.inv_amount[idee])); 
draw_set_halign(fa_left);