/// @description Insert description here
// You can write your code in this editor
if (obj_camera.mouse_mode == 1) 
{
	if (place_meeting(x,y,obj_block)) || (place_meeting(x,y,obj_player))
	{
		draw_sprite_ext(obj_idb.sprite[obj_camera.inv_id[obj_camera.hotbar]],0,x,y,1,1,0,c_red,.5);
	}
	else draw_sprite_ext(obj_idb.sprite[obj_camera.inv_id[obj_camera.hotbar]],0,x,y,1,1,0,c_white,.5);
}
draw_self();