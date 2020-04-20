/// @description Insert description here
// You can write your code in this editor
//swipe timer

if (keyboard_check_pressed(ord("X"))) && (onship > 0)
{
	flytip = 0;
}

if (swipe_time > 0) swipe_time--;

if (hit > 0) hit -= .05;
if (stun > 0) stun -= .1;



if (onship!= 0){
	x = onship.phy_com_x;
	y = onship.phy_com_y;
	image_angle = -(onship.image_angle + 90);
	visible = false;
	//show_debug_message(image_angle);
}
else {
	visible = true;
	image_angle = 0;
//movement
if (obj_camera.mode = 0)
{
	if (stun <= 0)
	{
		xkey = keyboard_check(ord("D")) - keyboard_check(ord("A"));
		if (keyboard_check_pressed(vk_space))
		{
			ysp = -jumpspeed;
		}
	}
	
	//attack
	/*
	if (swipe_time < 1)
	{
		if (keyboard_check_pressed(vk_right))
		{
			var obj = instance_create_depth(x,y,-y - 300, obj_swipeanim);
			obj.image_angle = 0;
			var obj = instance_create_depth(x,y,-y - 300, obj_swipe);
			obj.image_angle = 0;
			swipe_time = swipe_maxtime;
		}
		else if (keyboard_check_pressed(vk_down))
		{
			var obj = instance_create_depth(x+1,y+1,-y - 300, obj_swipeanim);
			obj.image_angle = 270;
			var obj = instance_create_depth(x+1,y+1,-y - 300, obj_swipe);
			obj.image_angle = 270;
			swipe_time = swipe_maxtime;
		}
		else if (keyboard_check_pressed(vk_left))
		{
			var obj = instance_create_depth(x,y+1,-y - 300, obj_swipeanim);
			obj.image_angle = 180;
			var obj = instance_create_depth(x,y+1,-y - 300, obj_swipe);
			obj.image_angle = 180;
			swipe_time = swipe_maxtime;
		}
		else if (keyboard_check_pressed(vk_up))
		{
			var obj = instance_create_depth(x,y-1,-y - 300, obj_swipeanim);
			obj.image_angle = 90;
			var obj = instance_create_depth(x,y-1,-y - 300, obj_swipe);
			obj.image_angle = 90;
			swipe_time = swipe_maxtime;
		}
	}
	
	//talk to npc
	if (keyboard_check_pressed(vk_space))
	{
		if (place_meeting(x,y,obj_npchb))
		{
			var obj = instance_place(x,y,obj_npchb);
			if (obj.parent != -1)
			{
				obj_camera.mode = 1;
				var obj2 = instance_create_depth(x,y,-99999,obj_textbox);
				var i = 0;
				var u = 0;
				while (i == 0)
				{
					obj2.text[u] = obj.parent.text[u];
					if (obj2.text[u] == "break;") i = 1;
					u++;
				}
				obj2.sprite = obj.parent.sprite_index;
				obj2.sprite_yset = obj.parent.sprite_yset;
				obj2.name = obj.parent.name;
				obj2.name_yset = obj.parent.name_yset;
			}
		}
	}	
	*/	
}
else
{
	xkey = 0;
}
xsp = spd * xkey;
if (ysp < 7) ysp += grav;

//fall

if (xkey != 0) dir = xkey;

//Horizontal Collision
if (place_meeting(x+xsp,y,obj_collisionparent))
{
	if (!place_meeting(x+xsp,y-8,obj_collisionparent)) && (place_meeting(x,y+8,obj_collisionparent))
	{
		y -= 8;
	}
	else
	{
	    x = round(x);
	    while(!place_meeting(x+sign(xsp),y,obj_collisionparent))
	    {
	        x += sign(xsp);
	    }
	    xsp = 0;
	}
}
x += xsp;
if (xsp = 0) x = round(x);

//Vertical Collision
if (place_meeting(x,y+ysp,obj_collisionparent))
{
    y = round(y);
    while(!place_meeting(x,y+sign(ysp),obj_collisionparent))
    {
        y += sign(ysp);
    }
    ysp = 0;
}
y += ysp;
if (ysp = 0) y = round(y);
}

//depth = -y;

//obj_playerhb.x = x;
//obj_playerhb.y = y;

//animation -------------------------------------------------------------


//reset
//if (keyboard_check_pressed(vk_escape)) room_restart();
