/// @description Insert description here
//ui
draw_set_font(font0);
draw_set_color(c_white);

if (shipbuild == -1)
{
	//draw_text(x + 1 - 160,y + 1 - 90,"HP: " + string(obj_player.hp) + "/" + string(obj_player.maxhp));
	draw_text(x + 1 - 160,y + 7 - 90,"back" + string(instance_count));
	//draw_text(x + 1 - 160,y + 13 - 90,"craft_back " + string(craft_back));
}

if (obj_player.onship > 0)
{
	//"WASD to move directions"
	//"(Q) toggles stabilation"
	//"(SPACE) activates drills"
	//"Fly upwards to go to space"
}