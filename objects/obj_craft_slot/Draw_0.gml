/// @description Insert description here
// You can write your code in this editor
if (idee <= 14 + parent.mat_count )
{
	draw_self();
	
	//show_debug_message(idee);

if (obj_idb.sprite[parent.slot_id[idee]] != -1) draw_sprite(obj_idb.sprite[parent.slot_id[idee]],-1,x,y);



if (idee > 14) && (idee <= 14 + parent.mat_count) 
{
	draw_set_font(font0);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	if (parent.mat_amount[idee]>0){
	if (sprite_index = sp_inventory_slot1) || (sprite_index = sp_inventory_slot3)
	{
		if (parent.mat_amount[idee] < 10)
		{
			draw_sprite(sp_inventory_amount,1,x+1,y+9);
			draw_text(x+1,y+6,string(parent.mat_amount[idee])); 
		}
		else
		{
			draw_sprite(sp_inventory_amount,0,x,y+9);
			draw_text(x+1,y+6,string(parent.mat_amount[idee])); 
		}
	}
	else if (sprite_index = sp_inventory_slot2)
	{
		if (parent.mat_amount[idee] < 10)
		{
			draw_sprite(sp_inventory_amount,1,x-1,y+9);
			draw_text(x-1,y+6,string(parent.mat_amount[idee])); 
		}
		else 
		{
			draw_sprite(sp_inventory_amount,0,x-1,y+9);
			draw_text(x,y+6,string(parent.mat_amount[idee])); 
		}
	}
	}
}
	
draw_set_halign(fa_left);

}