/// @description Insert description here
// You can write your code in this editor
seed = irandom_range(10000000,100000000);

var blockSize = sprite_get_width(sp_dirt);
var maxHeight = room_height/blockSize;
 

for (var xx=0;xx<room_width/blockSize;xx++){
	var h = scr_perlin(xx,maxHeight);
	for (var yy = 0;yy<h;yy++){
		instance_create_layer(xx*blockSize, room_height - (yy*blockSize), "Instances", obj_dirt);
	}
}