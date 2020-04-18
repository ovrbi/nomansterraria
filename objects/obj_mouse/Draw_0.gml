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
	var name = "";
	var desc = "";
	if (place_meeting(x,y,obj_inventory_button))
	{
		if (obj_camera.inv_expand == -1) name = "Expand Inventory (E)";
		else name = "Collapse Inventory (E)";
	}
	else if (table != 0) && (obj_camera.inv_expand == -1)
	{
		name = obj_idb.name[table];
		desc = "(E) to open."
	}
	else if (place_meeting(x,y,obj_inventory_slot))
	{
		var obj = instance_place(x,y,obj_inventory_slot);
		if (obj.idee < 11) || (obj_camera.inv_expand == 1)
		{
			if (obj_camera.inv_id[obj.idee] > 0)
			{
				name = obj_idb.name[obj_camera.inv_id[obj.idee]];
				desc = obj_idb.desc[obj_camera.inv_id[obj.idee]];
			}
			else if (obj.idee >= 41) && (obj.idee <= 44)
			{
				name = "Multitool Upgrade Slot";
				desc = "It's empty."
			}
			else if (obj.idee == 45)
			{
				name = "Helmet Slot";
				desc = "It's empty."
			}
			else if (obj.idee == 46)
			{
				name = "Chestpiece Slot";
				desc = "It's empty."
			}
			else if (obj.idee == 47)
			{
				name = "Legwear Slot";
				desc = "It's empty."
			}
			else if (obj.idee >= 48) && (obj.idee <= 50)
			{
				name = "Player Enhancement Slot";
				desc = "It's empty."
			}
		}
	}
	
	if (name != "")
	{
		if (desc != "")
		{
			if (string_width(name) > string_width(desc))
			{
				draw_set_color(c_black);
				draw_rectangle(x+3, y+6, x+5 + string_width(name), y+14, false);
						
				draw_set_alpha(.5);
				draw_rectangle(x+4, y+15, x+4 + string_width(name), y+16 + string_height(desc), false);
				draw_set_alpha(1);
						
				draw_set_color($bd9956);
				draw_rectangle(x+4, y+7, x+4 + string_width(name), y+13, false);
			}
			else
			{
				draw_set_color(c_black);
				draw_rectangle(x+3, y+6, x+5 + string_width(desc), y+14, false);
						
				draw_set_alpha(.5);
				draw_rectangle(x+4, y+15, x+4 + string_width(desc), y+16 + string_height(desc), false);
				draw_set_alpha(1);
						
				draw_set_color($bd9956);
				draw_rectangle(x+4, y+7, x+4 + string_width(desc), y+13, false);
			}
		}
		else
		{
			draw_set_color(c_black);
			draw_rectangle(x+3, y+6, x+5 + string_width(name), y+14, false);
			draw_set_color($bd9956);
			draw_rectangle(x+4, y+7, x+4 + string_width(name), y+13, false);
		}
			
		draw_set_color(c_white);
		draw_text(x+5,y+7,name);
		draw_text(x+5,y+16,desc);
	}
}

draw_sprite(sp_mouse,-1,x,y);















