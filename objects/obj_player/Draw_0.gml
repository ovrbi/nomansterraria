/// @description Insert description here
// You can write your code in this editor
col = merge_color(c_white,c_red,hit);

/*if (xsp != 0)
{
	sprite_index = sp_playerrun;
	draw_sprite_ext(sp_playerrun,-1,x,y,dir,1,0,col,1);
	image_speed = .5;
}
else
{*/
	sprite_index = sp_player2;
	draw_sprite_ext(sp_player2,-1,x,y,dir,1,0,col,1);
	image_speed = .2;
//}