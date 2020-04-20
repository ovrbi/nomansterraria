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
		if (obj_camera.inv_expand == -1) name = "Expand Inventory (Tab)";
		else name = "Collapse Inventory (Tab)";
	}
	else if (table != 0) && (obj_camera.inv_expand == -1) && (obj_camera.crafting == -1)
	{
		name = obj_idb.name[table];
		desc = "(E) to open."
	}
	else if (place_meeting(x,y,obj_shippart)) && (obj_camera.inv_expand == -1) && (obj_camera.crafting == -1) && (obj_player.onship == 0)
	{
		name = "Ship";
		desc = "(E) to enter."
	}
	else if (place_meeting(x,y,obj_craft_slot))
	{
		var obj = instance_place(x,y,obj_craft_slot);
		if (obj.parent.slot_id[obj.idee] > 0)
		{
			name = obj_idb.name[obj.parent.slot_id[obj.idee]];
			desc = obj_idb.desc[obj.parent.slot_id[obj.idee]];
		}
	}
	else if (place_meeting(x,y,obj_shipbuild_slot))
	{
		var obj = instance_place(x,y,obj_shipbuild_slot);
		if (obj.idee == 0)
		{
			name = "Remove parts";
			desc = "";
		}
		else if (obj.idee > 0) && (obj.idee < 4)
		{
			name = obj_sdb.name[obj_shipbuild_parent.slot_id[obj.idee]];
			desc = obj_sdb.desc[obj_shipbuild_parent.slot_id[obj.idee]];
		}
		else if (obj.idee == 8)
		{
			name = "Build Ship";
			desc = "Place the ship\ninto the world.";
		}
		else if (obj.idee == 9)
		{
			name = "Exit";
			desc = "Exit without\nsaving.";
		}
	}
	else if (place_meeting(x,y,obj_shipbuild_rotate))
	{
		var obj = instance_place(x,y,obj_shipbuild_rotate);
		if (obj.idee == 0)
		{
			name = "Rotate Left (Q)";
			desc = "";
		}
		else
		{
			name = "Rotate Right (E)";
			desc = "";
		}
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
	
	
	var width = 0;
	if (string_width(name) > string_width(desc))
	{
		width = string_width(name);
	}
	else
	{
		width = string_width(desc);
	}
		
	if (name != "")
	{
		var x1 = x+3;
		var y1 = y+6;
		var x2 = x+5 + width;
		var y2 = y+14;
		if (x2 >= obj_camera.x + 160)
		{
			x2 = obj_camera.x + 160 - 1;
			x1 = x2 - width - 2;
		}
		
		
		draw_set_color(c_black);
		draw_rectangle(x1, y1, x2, y2, false);
		
		if (desc != "")
		{
			draw_set_alpha(.5);
			draw_rectangle(x1+1, y1+9, x2-1, y2+2 + string_height(desc), false);
			draw_set_alpha(1);
		}
						
		draw_set_color($bd9956);
		draw_rectangle(x1+1, y1+1, x2-1, y2-1, false);
		
		draw_set_color(c_white);
		draw_text(x1+2,y1+1,name);
		draw_text(x1+2,y1+10,desc);
	}
}

draw_sprite(sp_mouse,-1,x,y);















