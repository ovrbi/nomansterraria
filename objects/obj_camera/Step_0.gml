/// @description Insert description here
// You can write your code in this editor

///follows
if (instance_exists(obj_player))
{
    xmove = round((obj_player.x - x) / 10 * 4) / 4;
    ymove = round((obj_player.y - y) / 10 * 4) / 4;
    x += xmove;
    y += ymove;
	image_angle = obj_player.image_angle;
}

camera_set_view_pos(view_camera[0],x-160,y-90);
if (room == 3) camera_set_view_angle(view_camera[0],image_angle);

if (keyboard_check_pressed(ord("E"))) && (crafting == -1)
{
	if (obj_mouse.table == 22)
	{
		#region shipbuild
		var size = 1;
		var size0 = 0;
		var obj;
		for (var i = 1; i<=maxShipLength;i++){
			if (position_meeting(mouse_x + i * blockSize,mouse_y,obj_block)){
				obj = collision_point(mouse_x + i * blockSize,mouse_y,obj_block, false, true);
				if (obj.idee == 9) size++;
				else i = maxShipLength + 1;
			}
			else i = maxShipLength + 1;
		}
		for (var i = 1; i<=maxShipLength;i++){
			if (position_meeting(mouse_x - i * blockSize,mouse_y,obj_block)){
				obj = collision_point(mouse_x - i * blockSize,mouse_y,obj_block, false, true);
				if (obj.idee == 9) size0++;
				else i = maxShipLength + 1;
			}
			else i = maxShipLength + 1;
		}
		
		/*
		var object = collision_rectangle((d1v(mouse_x,blockSize)- size0)*blockSize,d1v(mouse_y,blockSize)*blockSize,(d1v(mouse_x,blockSize)+ size+1)*blockSize,(d1v(mouse_y,blockSize) - size-size0)*blockSize, obj_ship, false, true);
		if (object!=noone) {
			object.persistent = true;
		}
		obj_messenger.ship = object;
		*/
		obj_messenger.ship = noone;
		
		obj_messenger.buildWidth = size+size0;
		obj_messenger.stx = (d1v(mouse_x,blockSize) - size0)*blockSize;
		obj_messenger.sty = (d1v(mouse_y,blockSize) - size0-size)*blockSize;
		show_debug_message("Going");
		obj_messenger.builder = instance_create_layer(0,0,"Instances",obj_buildManager);
		//room_goto(2);
		//alarm[0] = 1;
		#endregion
	}
	else if (obj_mouse.table != 0) //call actual crafting UI
	{
		if (instance_exists(obj_craft_back)) instance_destroy(craft_back);
		crafting = 1;
		craft_back = instance_create_layer(x,y,"UI_back",obj_craft_back);
		//craft_back.idee = obj_mouse.table;
	}
	
	
	
	
}
if (keyboard_check_pressed(vk_tab)){
	obj_camera.inv_expand = -obj_camera.inv_expand;
}

//inventry positioning
if (instance_exists(inv_back))
{
	inv_back.x = x;
	inv_back.y = y-30;
}

//hotbar
var xx = 0;
for (var i = 0; i <= 10; i++)
{
	if (i < 5) xx = 0;
	else if (i = 5) xx = 2;
	else xx = 4;
	if (instance_exists(inv[i]))
	{
		inv[i].x = x - 102 + 20*i + xx;
		inv[i].y = y-79;
	}
}

if (inv_expand == 1)
{
//incentory slots
	for (var i = 1; i <= 3; i++)
	{
		for (var j = 1; j <= 5; j++)
		{
			if (instance_exists(inv[i*10 + j]))
			{
				inv[i*10 + j].x = x - 122 + 20*j;
				inv[i*10 + j].y = y - 78 + 24*i;
			}
		}
		for (var j = 6; j <= 10; j++)
		{
			if (instance_exists(inv[i*10 + j]))
			{
				inv[i*10 + j].x = x - 102 + 20*j + 4;
				inv[i*10 + j].y = y - 78 + 24*i;
			}
		}
	}

	//MM upgrade slots
	for (var i = 0; i <= 3; i++)
	{
		if (instance_exists(inv[i+41]))
		{
			inv[i+41].x = x;
			inv[i+41].y = y - 57 + 20*i;
		}
	}
	
	//armor slots
	for (var i = 0; i <= 2; i++)
	{
		if (instance_exists(inv[i+45]))
		{
			inv[i+45].x = x - 82 + i * 20;
			inv[i+45].y = y + 18;
		}
	}
	
	//player upgrade slots
	for (var i = 0; i <= 2; i++)
	{
		if (instance_exists(inv[i+48]))
		{
			inv[i+48].x = x + 42 + i * 20;
			inv[i+48].y = y + 18;
		}
	}
}
	
if (instance_exists(inv_button))
{
	if (inv_expand == -1)
	{
		inv_button.x = x;
		inv_button.y = y-64;
	}
	else
	{
		inv_button.x = x;
		inv_button.y = y+21;
	}
}

//crafting positioning
if (crafting = 1) && (instance_exists(craft_back))
{
	craft_back.x = x;
	craft_back.y = y;
}

//hotbar shenanigans
if (mouse_wheel_up()) hotbar--;
else if (mouse_wheel_down()) hotbar++;
if (hotbar < 0) hotbar = 10;
if (hotbar > 10) hotbar = 0;

for (var i = 0; i <= 10; i++)
{
	if (inv_id[i] != 0) && (inv_amount[i] < 1)
	{
		inv_id[i] = 0;
		inv_amount[i] = 0;
	}	
}



