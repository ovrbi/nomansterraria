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
if (keyboard_check_pressed(ord("E"))) && (room != rm_space)
{	
	obj_player.onship = 0;
	if (place_meeting(x,y,obj_shippart)) obj_player.onship = collision_point(x,y,obj_shippart,false, false).ship;
}

if (obj_camera.shipbuild == -1)
{
	if (place_meeting(x,y,obj_inventory_back)) || (obj_camera.inv_id[obj_camera.hotbar] == 0) || (obj_camera.inv_expand == 1) || (obj_camera.crafting == 1) || (room = rm_space)
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
}
else
{
	if  (place_meeting(x,y,obj_shipbuild_back)) || (obj_shipbuild_parent.slot_id[obj_shipbuild_parent.select] == -1)
	{
		obj_camera.mouse_mode = 0;
	}
	else
	{
		if (obj_shipbuild_parent.select = 0)
		{
			obj_camera.mouse_mode = 3;
		}
		else obj_camera.mouse_mode = 1;
	}
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
			var obj = instance_place(x,y,obj_craft_button);
			if (obj.parent.mat_amount[15] <= obj.parent.mat_total[15]) && (obj.parent.mat_amount[16] <= obj.parent.mat_total[16]) && (obj.parent.mat_amount[17] <= obj.parent.mat_total[17])
			{
				scr_removeItem(obj.parent.slot_id[15], obj.parent.mat_amount[15]);
				scr_removeItem(obj.parent.slot_id[16], obj.parent.mat_amount[16]);
				scr_removeItem(obj.parent.slot_id[17], obj.parent.mat_amount[17]);
				
				scr_dropItem(obj_player.x, obj_player.y, obj.parent.slot_id[obj.parent.chosen], 1);
				
				scr_countMaterials(obj.parent);
			}
		}
		else if (place_meeting(x,y,obj_shipbuild_slot))
		{
			var obj = instance_place(x,y,obj_shipbuild_slot);
			if (obj.idee < 8) obj_shipbuild_parent.select = obj.idee;
			else
			{
				if (obj.idee == 8)
				{
					//place ship
					var c = 0;
					var arr7;
					obj_shipbuild_parent.maxHeight = 0;
					var maxWidth = obj_shipbuild_parent.buildWidth;
					
					
					
					with (obj_shipbuildpart){
						arr7[c] = id;
						//show_debug_message("dviv: "+ string((obj_shipbuild_parent.source.y-y)div blockSize));
						if((obj_shipbuild_parent.source.y-y)div blockSize > obj_shipbuild_parent.maxHeight) obj_shipbuild_parent.maxHeight = (obj_shipbuild_parent.source.y-y)div blockSize;
						c++;
					}
					if (c>0){
					for (var p = 0; p < maxWidth;p++)
					for (var o = 0; o < obj_shipbuild_parent.maxHeight; o++)
					obj_messenger.buildmatrix[p,o] = 0;
					
					for (var d = 0; d<array_length_1d(arr7);d++){
						//show_debug_message(string(obj_shipbuild_parent.source.x-arr7[d].x+obj_shipbuild_parent.size0*blockSize)+";"+string(obj_shipbuild_parent.source.y-arr7[d].y));
						scr_placepart(arr7[d].x-obj_shipbuild_parent.source.x+obj_shipbuild_parent.size0*blockSize,obj_shipbuild_parent.maxHeight*blockSize-(obj_shipbuild_parent.source.y-arr7[d].y),m0d(d1v(arr7[d].image_angle+90,90),4),arr7[d].idee);
						
					}
					//show_debug_message("Maxheight: "+string(obj_shipbuild_parent.maxHeight));
					obj_messenger.maxHeight = obj_shipbuild_parent.maxHeight;
					obj_messenger.maxWidth = maxWidth;
					//obj_messenger.buildmatrix = obj_shipbuild_parent.buildmatrix;
					//obj_camera.alarm[0] = 1;
					
					obj_messenger.ship = instance_create_layer(0,0,"Instances",obj_ship);

					obj_messenger.ship.phy_position_x = obj_shipbuild_parent.source.x - obj_shipbuild_parent.size0*blockSize-blockSize/2;
					obj_messenger.ship.phy_position_y = obj_shipbuild_parent.source.y - obj_shipbuild_parent.maxHeight*blockSize-1;
					obj_messenger.ship.phy_active = true;
					}
				}
				obj_camera.shipbuild = -1;
				//*
				instance_destroy(obj_shipbuild_back);
				instance_destroy(obj_shipbuild_slot);
				instance_destroy(obj_shipbuild_rotate);
				instance_destroy(obj_shipbuild_parent);
				instance_destroy(obj_shipbuildpart);
				//*/
			}
		}
		else if (place_meeting(x,y,obj_shipbuild_rotate))
		{
			var obj = instance_place(x,y,obj_shipbuild_rotate);
			if (obj.idee = 0) obj_shipbuild_parent.rot += 90;
			else obj_shipbuild_parent.rot -= 90;
		}
		else if (stored_id != 0) && (!place_meeting(x,y,obj_block))
		{
			scr_dropItem(x,y,stored_id,stored_amount);
			stored_id = 0;
			stored_amount = 0;
			stored_spot = -1;
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



