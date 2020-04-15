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

//inventry positioning
if (instance_exists(inv_back))
{
	inv_back.x = x;
	inv_back.y = y-48;
}
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
if (instance_exists(inv_button))
{
	inv_button.x = x;
	inv_button.y = y-48;
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



