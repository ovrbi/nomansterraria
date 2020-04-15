/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

if (place_meeting(x,y,obj_inventory_back)) || (obj_camera.inv_id[obj_camera.hotbar] == 0)
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