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
if (instance_exists(inv_back))
{
	inv_back.x = x;
	inv_back.y = y-49;
}