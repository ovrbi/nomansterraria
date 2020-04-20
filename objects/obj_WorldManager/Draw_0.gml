/// @description Insert description here
// You can write your code in this editor
if debugChunk {
for (var i = obj_player.x - 5*convrate; i < obj_player.x + 5*convrate; i+= convrate){
	draw_line(d1v(i,convrate)*convrate,obj_player.y - 5*convrate,d1v(i,convrate)*convrate,obj_player.y + 5*convrate);
}
for (var j = obj_player.y - 5*convrate; j < obj_player.y + 5*convrate; j+= convrate){
	draw_line(obj_player.x - 5*convrate,d1v(j,convrate)*convrate,obj_player.x + 5*convrate,d1v(j,convrate)*convrate);
}
draw_text(obj_player.x, obj_player.y+10, string(d1v(obj_player.x,convrate))+";"+string(d1v(obj_player.y,convrate)));
//draw_rectangle_color(stx*convrate,sty*convrate,(enx+1)*convrate,(eny+1)*convrate,c_red,c_red,c_red,c_red,true);
draw_rectangle_color(obj_player.x-camera_get_view_width(view_camera[0]),obj_player.y-camera_get_view_height(view_camera[0]),obj_player.x+camera_get_view_width(view_camera[0]),obj_player.y+camera_get_view_height(view_camera[0]),c_green,c_green,c_green,c_green,true);
}

