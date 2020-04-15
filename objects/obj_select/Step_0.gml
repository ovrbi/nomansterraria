//coords
x = 4 + floor(mouse_x / 8) * 8;
y = 4 + floor(mouse_y / 8) * 8;
if (obj_camera.mouse_mode = 1)
{
	image_alpha = 1;
	sprite_index = sp_select;
}
else if (obj_camera.mouse_mode = 3)
{
	image_alpha = 1;
	sprite_index = sp_select5;
}
else
{
	image_alpha = 0;
}

//break blocks
if (mouse_check_button(mb_left))
{
	if (place_meeting(x,y,obj_block)) && (obj_camera.mouse_mode == 3)
	{
		scr_destroyBlock(x,y);
		//var obj = instance_place(x,y,obj_block)
		//instance_destroy(obj);
	}
	else if (obj_camera.mouse_mode == 1) && (!place_meeting(x,y,obj_block)) && (!place_meeting(x,y,obj_player)) && (obj_camera.inv_amount[obj_camera.hotbar] > 0)
	{
		scr_placeBlock(x,y,1);
		obj_camera.inv_amount[obj_camera.hotbar]--;
	}
}
/*if (mouse_check_button(mb_left)) && (place_meeting(x,y,obj_playerrange))
{
    if (place_meeting(x,y,obj_overlayparent))
    {
        inst = instance_place(x,y,obj_overlayparent);
        with (inst)
        {
            mp++;
        }
    }
    if (place_meeting(x,y,obj_blockparent))
    {
        inst = instance_place(x,y,obj_blockparent);
        with (inst)
        {
            if (!place_meeting(x,y,obj_break))
            {
                instance_create(x,y,obj_break);
            }
            mp++;
        }
    }
    if (place_meeting(x,y,obj_naturalwood))
    {
        inst = instance_place(x,y,obj_naturalwood);
        with (inst)
        {
            if (!place_meeting(x,y,obj_break))
            {
                instance_create(x,y,obj_break);
            }
            mp++;
        }
    }
}*/

//create blocks