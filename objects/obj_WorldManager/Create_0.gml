/// @description Insert description here
// You can write your code in this editor
var blockSize = sprite_get_width(sp_dirt);

for (var xx=0;xx<room_width/blockSize;xx++){
	for (var yy = 0;yy<room_height/blockSize;yy++){
		instance_create_layer(xx*blockSize, yy*blockSize, "Instances", obj_dirt);
	}
}