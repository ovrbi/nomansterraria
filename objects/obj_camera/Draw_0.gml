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

if (room = rm_space)
{
	draw_sprite(sp_starmap,0,x-115,y+46);
	draw_sprite(sp_starmap_planet,0,x-115+18,y+46+26);
	draw_sprite(sp_starmap_planet,1,x-115-15,y+46+17);
	draw_sprite(sp_starmap_planet,2,x-115-9,y+46-21);
	draw_sprite_ext(sp_starmap_ship,0,x-115+18 + obj_ship.x / 100,y+46+26 + obj_ship.y / 100,1,1,-obj_ship.phy_rotation,c_white,1);
	draw_text(x-152,y-3,"Starchart");
}