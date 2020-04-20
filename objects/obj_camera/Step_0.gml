/// @description Insert description here
// You can write your code in this editor

///follows
if (shipbuild == -1)
{
	if (instance_exists(obj_player))
	{
		if (obj_player.onship == 0)
		{
		    xmove = round((obj_player.x - x) / 10 * 4) / 4;
		    ymove = round((obj_player.y - y) / 10 * 4) / 4;
		    x += xmove;
		    y += ymove;
			image_angle = obj_player.image_angle;
		}
		else
		{
			xmove = round((obj_player.x - x) / 3 * 4) / 4;
		    ymove = round((obj_player.y - y) / 3 * 4) / 4;
		    x += xmove;
		    y += ymove;
			image_angle = obj_player.image_angle;
		}
	}
}
else
{
	if (instance_exists(shipbuild_parent))
	{
	    xmove = round((shipbuild_parent.x - x) / 10 * 4) / 4;
	    ymove = round((shipbuild_parent.y - y) / 10 * 4) / 4;
	    x += xmove;
	    y += ymove;
		image_angle = shipbuild_parent.image_angle;
	}
}

camera_set_view_pos(view_camera[0],x-160,y-90);
if (room == 3) camera_set_view_angle(view_camera[0],image_angle);

if (keyboard_check_pressed(ord("E"))) && (crafting == -1) && (inv_expand == -1) && (shipbuild == -1)
{
	if (obj_mouse.table == 22)
	{
		#region shipbuild
		var size = 1;
		var size0 = 0;
		var obj;
		var obj2 = instance_position(obj_mouse.x, obj_mouse.y, obj_block);
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
		
		var buildWidth = size + size0;
		var buildCenter = size - size0;
		
		if (buildWidth >= 5)
		{

		
			shipbuild = 1;
		
			shipbuild_parent = instance_create_layer(obj2.x + buildCenter*8/2,obj2.y-74,"Instances",obj_shipbuild_parent);
			shipbuild_parent.size = size;
			shipbuild_parent.size0 = size0;
			shipbuild_parent.buildWidth = buildWidth;
			shipbuild_parent.source = obj2;
		
			shipbuild_back = instance_create_layer(x,y,"UI_back",obj_shipbuild_back);
			shipbuild_back.parent = shipbuild_parent;
		}
		else 
		{
			var obj3 = instance_create_layer(mouse_x,mouse_y,"OverOverUI",obj_disclaimer);
			obj3.text = "Must consist of a row of a Ship\nConstructor and at least four\nPlatforms."
		}
		/*
		obj_messenger.ship = noone;
		
		obj_messenger.buildWidth = size+size0;
		obj_messenger.stx = (d1v(mouse_x,blockSize) - size0)*blockSize;
		obj_messenger.sty = (d1v(mouse_y,blockSize) - size0-size)*blockSize;
		room_goto(2);
		//alarm[0] = 1;*/
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
if (keyboard_check_pressed(vk_tab)) && (crafting == -1) && (shipbuild == -1)
{
	obj_camera.inv_expand = -obj_camera.inv_expand;
}

var inv_shift = 0;
if (shipbuild == 1) inv_shift = -100;

//inventry positioning
if (instance_exists(inv_back))
{
	inv_back.x = x;
	inv_back.y = y-30 +inv_shift;
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
		inv[i].y = y-79 +inv_shift;
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
				inv[i*10 + j].y = y - 78 + 24*i +inv_shift;
			}
		}
		for (var j = 6; j <= 10; j++)
		{
			if (instance_exists(inv[i*10 + j]))
			{
				inv[i*10 + j].x = x - 102 + 20*j + 4;
				inv[i*10 + j].y = y - 78 + 24*i +inv_shift;
			}
		}
	}

	//MM upgrade slots
	for (var i = 0; i <= 3; i++)
	{
		if (instance_exists(inv[i+41]))
		{
			inv[i+41].x = x;
			inv[i+41].y = y - 57 + 20*i +inv_shift;
		}
	}
	
	//armor slots
	for (var i = 0; i <= 2; i++)
	{
		if (instance_exists(inv[i+45]))
		{
			inv[i+45].x = x - 82 + i * 20;
			inv[i+45].y = y + 18 +inv_shift;
		}
	}
	
	//player upgrade slots
	for (var i = 0; i <= 2; i++)
	{
		if (instance_exists(inv[i+48]))
		{
			inv[i+48].x = x + 42 + i * 20;
			inv[i+48].y = y + 18 +inv_shift;
		}
	}
}
	
if (instance_exists(inv_button))
{
	if (inv_expand == -1)
	{
		inv_button.x = x;
		inv_button.y = y-64 +inv_shift;
	}
	else
	{
		inv_button.x = x;
		inv_button.y = y+21 +inv_shift;
	}
}

//crafting positioning
if (crafting = 1) && (instance_exists(craft_back))
{
	craft_back.x = x;
	craft_back.y = y;
}

//shipbuild positioning
if (shipbuild = 1) && (instance_exists(shipbuild_back))
{
	shipbuild_back.x = x;
	shipbuild_back.y = y;
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



