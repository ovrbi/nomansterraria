/// @description Insert description here
// You can write your code in this editor 
if (vsp < 10) vsp += grav;
//Horizontal Collision
if (place_meeting(x+hsp,y,obj_collisionparent))
{
    x = round(x);
    while(!place_meeting(x+sign(hsp),y,obj_collisionparent))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

//Vertical Collision
if (place_meeting(x,y+vsp,obj_collisionparent))
{
    while(!place_meeting(x,y+sign(vsp),obj_collisionparent))
    {
        y += sign(vsp);
    }
    vsp = 0;
    hsp = 0;
}
x += hsp;
y += vsp;
if (hsp = 0) x = round(x);
if (vsp = 0) y = round(y);


//pickup
if (place_meeting(x,y,obj_player)) || (place_meeting(x,y,obj_shippart)) && (obj_player.onship > 0)
{
	var destroy = 0;
	//check if stacks of this item exist first
	for (i = 0; i < 10; i++)
	{
		if (obj_camera.inv_id[i] = idee) && (obj_camera.inv_amount[i] < obj_idb.stack[obj_camera.inv_id[i]])
		{
			obj_camera.inv_amount[i]++;
			destroy = 1;
			break;
		}
	}
	//create a new stack on first available slot
	if (destroy = 0)
	{
		for (i = 0; i <= 40; i++)
		{
			if (obj_camera.inv_id[i] = 0)
			{
				obj_camera.inv_id[i] = idee;
				obj_camera.inv_amount[i] = 1;
				destroy = 1;
				break;
			}
		}
	}
	if (destroy == 1) instance_destroy();
}

if (place_meeting(x,y,obj_block))
{
	if (!place_meeting(x,y-8,obj_block)) y -= 8;
	else if (!place_meeting(x,y+8,obj_block)) y += 8;
	else if (!place_meeting(x-8,y,obj_block)) x -= 8;
	else if (!place_meeting(x+8,y,obj_block)) x += 8;
}
