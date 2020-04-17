/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

if (place_meeting(x,y,obj_inventory_back)) || (obj_camera.inv_id[obj_camera.hotbar] == 0) || (obj_camera.inv_expand == 1)
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



