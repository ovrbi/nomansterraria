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
		var obj2 = instance_place(x,y,obj_block);
		if (!place_meeting(x,y,obj_break))
		{
			var obj = instance_create_layer(x,y,"Break",obj_break);
			obj.maxbt = obj2.breaktime;
			obj.parent = obj2;
		}
		if (place_meeting(x,y,obj_break))
		{
			var obj = instance_place(x,y,obj_break);
			obj.bt++;
		}
		//scr_destroyBlock(x,y);
		//var obj = instance_place(x,y,obj_block)
		//instance_destroy(obj);
	}
	else if (obj_camera.mouse_mode == 1) && (!place_meeting(x,y,obj_block)) && (!place_meeting(x,y,obj_player)) && (obj_camera.inv_amount[obj_camera.hotbar] > 0) && (obj_idb.type[obj_camera.inv_id[obj_camera.hotbar]] == 1)
	{
		scr_placeBlock(x,y,obj_camera.inv_id[obj_camera.hotbar]);
		obj_camera.inv_amount[obj_camera.hotbar]--;
	}
}
else if (mouse_check_button(mb_right)) //create and destroy back blocks
{
	if (place_meeting(x,y,obj_backblock)) && (obj_camera.mouse_mode == 3)
	{
		var obj2 = instance_place(x,y,obj_backblock);
		if (!place_meeting(x,y,obj_break))
		{
			var obj = instance_create_layer(x,y,"Break",obj_break);
			obj.maxbt = obj2.breaktime;
			obj.parent = obj2;
		}
		if (place_meeting(x,y,obj_break))
		{
			var obj = instance_place(x,y,obj_break);
			obj.bt++;
		}
		//scr_destroyBlock(x,y);
		//var obj = instance_place(x,y,obj_block)
		//instance_destroy(obj);
	}
	else if (obj_camera.mouse_mode == 1) && (!place_meeting(x,y,obj_backblock)) && (obj_camera.inv_amount[obj_camera.hotbar] > 0) && (obj_idb.type[obj_camera.inv_id[obj_camera.hotbar]] == 1)
	{
		scr_placeBlockBack(x,y,obj_camera.inv_id[obj_camera.hotbar]);
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