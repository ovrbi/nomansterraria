//coords
x = 4 + floor(mouse_x / 8) * 8;
y = 4 + floor(mouse_y / 8) * 8;

//break blocks
if (mouse_check_button(mb_left)) && (place_meeting(x,y,obj_block))
{
	var obj = instance_place(x,y,obj_block)
	instance_destroy(obj);
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
if (mouse_check_button(mb_right)) && (!place_meeting(x,y,obj_block))
{
	scr_placeBlock(x,y,1);
}