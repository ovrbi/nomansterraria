/// @description Insert description here
// You can write your code in this editor
if (obj_camera.inv_expand == -1)
{
	image_index = 0;
}
else
{
	image_index = 2;
}

if (place_meeting(x,y,obj_mouse)) image_index++;
//else image_index = 0;