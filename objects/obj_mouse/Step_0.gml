/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

//see if meeting a crafting table
table = 0;
if (place_meeting(x,y,obj_block))
{
	var obj = instance_place(x,y,obj_block);
	if (obj.idee >= 20) && (obj.idee <= 24)
	{
		table = obj.idee;
	}
}

//check if mouse on ship
if (keyboard_check_pressed(ord("E")))
{	
	obj_player.onship = 0;
	if (place_meeting(x,y,obj_shippart)) obj_player.onship = collision_point(x,y,obj_shippart,false, false).ship;
}

if (place_meeting(x,y,obj_inventory_back)) || (obj_camera.inv_id[obj_camera.hotbar] == 0) || (obj_camera.inv_expand == 1) || (obj_camera.crafting == 1)
{
	obj_camera.mouse_mode = 0;
}
else
{
	if (obj_camera.hotbar = 5)
	{
		obj_camera.mouse_mode = 3;
	}
	else obj_camera.mouse_mode = 1;
}

if (obj_camera.mouse_mode = 0)
{
	if (mouse_check_button_pressed(mb_left))
	{
		if (place_meeting(x,y,obj_inventory_button))
		{
			obj_camera.inv_expand = -obj_camera.inv_expand;
		}
		else if (place_meeting(x,y,obj_inventory_slot)) && (obj_camera.inv_expand == 1)
		{
			var obj = instance_place(x,y,obj_inventory_slot);
			if (stored_id = 0) && (obj_camera.inv_id[obj.idee] != 4)
			{
				stored_id = obj_camera.inv_id[obj.idee];
				stored_amount = obj_camera.inv_amount[obj.idee];
				stored_spot = obj.idee;
				
				obj_camera.inv_id[obj.idee] = 0;
				obj_camera.inv_amount[obj.idee] = 0;
			}
			else
			{
				if (obj_camera.inv_id[obj.idee] = 0) //put item in empty slot
				{
					obj_camera.inv_id[obj.idee] = stored_id;
					obj_camera.inv_amount[obj.idee] = stored_amount;
					
					stored_id = 0;
					stored_amount = 0;
					stored_spot = -1;
				}
				else if (obj_camera.inv_id[obj.idee] != 4) //put item in filled slot
				{
					if (obj_camera.inv_id[obj.idee] == stored_id) //filled slot has the same block
					{
						for (var i = 0; i < stored_amount; stored_amount--)
						{
							if (obj_camera.inv_amount[obj.idee] < obj_idb.stack[stored_id])
							{
								obj_camera.inv_amount[obj.idee]++;
							}
							else
							{
								break;
							}
						}
						if (stored_amount <= 0)
						{
							stored_id = 0;
							stored_spot = -1;
						}
					}
					else //filled slot has a different block
					{
						mem_id = obj_camera.inv_id[obj.idee];
						mem_amount = obj_camera.inv_amount[obj.idee];
					
					
						obj_camera.inv_id[obj.idee] = stored_id;
						obj_camera.inv_amount[obj.idee] = stored_amount;
					
						stored_id = mem_id;
						stored_amount = mem_amount;
						stored_spot = obj.idee;
					}
				}
			}
		}
		else if (place_meeting(x,y,obj_craft_slot))
		{
			var obj = instance_place(x,y,obj_craft_slot);
			if (obj.idee <= 14) && (obj.parent.slot_id[obj.idee] != 0)
			{
				obj.parent.chosen = obj.idee;
				
				
				obj.parent.mat_count = 0;
				for (var i = 15; i <= 17; i++)
				{
					obj.parent.slot_id[i] = 0;
					obj.parent.mat_amount[i] = 0;
	
					if (obj_cdb.cum[obj.parent.idee-20]+obj.idee < obj_cdb.cum[obj.parent.idee-19])
					{
						obj.parent.slot_id[i] = obj_cdb.ingredientid[obj_cdb.cum[obj.parent.idee-20]+obj.idee,i-15];
						if (obj.parent.slot_id[i]!= 0) obj.parent.mat_count++;
						obj.parent.mat_amount[i] = obj_cdb.ingredientcount[obj_cdb.cum[obj.parent.idee-20]+obj.idee,i-15];
					}
					
					/*obj.parent.mat_total[i] = 0;
					for (var j = 0; j <= 50; j++)
					{
						if (obj_camera.inv_id[j] == obj.parent.slot_id[i])
						{
							obj.parent.mat_total[i] += obj_camera.inv_amount[j];
						}
					}*/
					
				}
				if (obj.parent.mat_count == 0) obj.parent.mat_count = 1;
				
				scr_countMaterials(obj.parent);
				
			}
		}
		else if (place_meeting(x,y,obj_craft_close))
		{
			var obj = instance_place(x,y,obj_craft_close);
			obj.parent.destroy = 1;
		}
		else if (place_meeting(x,y,obj_craft_button))
		{
			if (parent.mat_amount[15] <= parent.mat_total[15]) && (parent.mat_amount[16] <= parent.mat_total[16]) && (parent.mat_amount[17] <= parent.mat_total[17])
			{
				
			}
		}
	}
}

//put held item back in place if inventory is closed
if (stored_id != 0) && (obj_camera.inv_expand == -1)
{
	obj_camera.inv_id[stored_spot] = stored_id;
	obj_camera.inv_amount[stored_spot] = stored_amount;
	
	stored_id = 0;
	stored_amount = 0;
	stored_spot = -1;
}



