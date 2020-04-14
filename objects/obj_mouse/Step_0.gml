/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

if (place_meeting(x,y,obj_inventory_back))
{
	obj_camera.mouse_mode = 0;
}
else
{
	obj_camera.mouse_mode = 1;
}

