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

if (obj_player.onship > 0) && (room != rm_space) && (obj_player.flytip = 1)
{
	draw_set_alpha(.5);
	draw_set_color(c_black);
	draw_rectangle(x+36,y+49,x+161,y+91,false);
	draw_set_alpha(1);
	draw_set_halign(fa_right)
	draw_set_color(c_white);
	draw_text(x+159,y+51,"WASD to move directions.");
	draw_text(x+159,y+59,"(Q) toggles stabilation.");
	draw_text(x+159,y+67,"(SPACE) activates drills.");
	draw_text(x+159,y+75,"Fly upwards to go to space.");
	draw_text(x+159,y+83,"(Press (X) to close).");
	draw_set_halign(fa_left)
	
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