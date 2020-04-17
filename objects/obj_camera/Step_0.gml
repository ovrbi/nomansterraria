/// @description Insert description here
// You can write your code in this editor

///follows
if (instance_exists(obj_player))
{
    xmove = round((obj_player.x - x) / 10 * 4) / 4;
    ymove = round((obj_player.y - y) / 10 * 4) / 4;
    x += xmove;
    y += ymove;
}

camera_set_view_pos(view_camera[0],x-160,y-90);

if (keyboard_check_pressed(ord("E")))
{
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



