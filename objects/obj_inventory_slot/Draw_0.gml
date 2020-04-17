/// @description Insert description here
// You can write your code in this editor
draw_self();

if (obj_idb.sprite[obj_camera.inv_id[idee]] != -1) draw_sprite(obj_idb.sprite[obj_camera.inv_id[idee]],-1,x,y);



if (obj_idb.stack[obj_camera.inv_id[idee]] > 1) 
{
	draw_set_font(font0);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	if (sprite_index = sp_inventory_slot1)
	{
		if (obj_camera.inv_amount[idee] < 10) 
		{
			draw_sprite(sp_inventory_amount,1,x+1,y+9);
			draw_text(x+1,y+6,string(obj_camera.inv_amount[idee])); 
		}
		else 
		{
			draw_sprite(sp_inventory_amount,0,x,y+9);
			draw_text(x+1,y+6,string(obj_camera.inv_amount[idee])); 
		}
	}
	else if (sprite_index = sp_inventory_slot2)
	{
		if (obj_camera.inv_amount[idee] < 10) 
		{
			draw_sprite(sp_inventory_amount,1,x-1,y+9);
			draw_text(x-1,y+6,string(obj_camera.inv_amount[idee])); 
		}
		else 
		{
			draw_sprite(sp_inventory_amount,0,x-1,y+9);
			draw_text(x,y+6,string(obj_camera.inv_amount[idee])); 
		}
	}
	
	
	draw_set_halign(fa_left);
}
