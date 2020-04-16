/// @description Insert description here
// You can write your code in this editor
if debugChunk {
for (var i = obj_player.x - 5*blockSize*chunkSize; i < obj_player.x + 5*blockSize*chunkSize; i+= blockSize*chunkSize){
	draw_line(d1v(i,blockSize*chunkSize)*blockSize*chunkSize,obj_player.y - 5*blockSize*chunkSize,d1v(i,blockSize*chunkSize)*blockSize*chunkSize,obj_player.y + 5*blockSize*chunkSize);
}
for (var j = obj_player.y - 5*blockSize*chunkSize; j < obj_player.y + 5*blockSize*chunkSize; j+= blockSize*chunkSize){
	draw_line(obj_player.x - 5*blockSize*chunkSize,d1v(j,blockSize*chunkSize)*blockSize*chunkSize,obj_player.x + 5*blockSize*chunkSize,d1v(j,blockSize*chunkSize)*blockSize*chunkSize);
}
draw_text(obj_player.x, obj_player.y+10, string(d1v(obj_player.x,blockSize*chunkSize))+";"+string(d1v(obj_player.y,blockSize*chunkSize)));
draw_rectangle_color(stx*blockSize*chunkSize,sty*blockSize*chunkSize,(enx+1)*blockSize*chunkSize,(eny+1)*blockSize*chunkSize,c_red,c_red,c_red,c_red,true);
draw_rectangle_color(obj_player.x-camera_get_view_width(view_camera[0]),obj_player.y-camera_get_view_height(view_camera[0]),obj_player.x+camera_get_view_width(view_camera[0]),obj_player.y+camera_get_view_height(view_camera[0]),c_green,c_green,c_green,c_green,true);
}

