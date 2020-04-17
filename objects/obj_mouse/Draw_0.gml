/// @description Insert description here
// You can write your code in this editor

if (stored_id != 0)
{
	draw_set_alpha(.5);
	draw_sprite(obj_idb.sprite[stored_id],-1,x,y);
	if (obj_idb.stack[stored_id] > 1)
	{
		draw_set_font(font0);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		
		if (stored_amount < 10) 
		{
			draw_sprite(sp_inventory_amount,1,x+1,y+9);
			draw_text(x+1,y+6,string(stored_amount)); 
		}
		else 
		{
			draw_sprite(sp_inventory_amount,0,x,y+9);
			draw_text(x+1,y+6,string(stored_amount)); 
		}
	}
	draw_set_alpha(1)
}
else
{
	if (place_meeting(x,y,obj_inventory_slot))
	{
		
	}
}

draw_sprite(sp_mouse,-1,x,y);















