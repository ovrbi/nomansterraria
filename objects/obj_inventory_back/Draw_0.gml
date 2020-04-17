/// @description Insert description here
// You can write your code in this editor
draw_self();
if (obj_camera.inv_expand == -1)
{
	image_index = 0;
}
else
{
	image_index = 1;
	draw_sprite(sp_inventory_backlines,0,x,y);
}