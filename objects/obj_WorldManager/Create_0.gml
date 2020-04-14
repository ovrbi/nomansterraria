/// @description Insert description here
// You can write your code in this editor
seed = irandom_range(10000000,100000000);

var blockSize = sprite_get_width(sp_dirt2);
var maxHeight = room_height/blockSize;
 

for (var i=0; i<room_width/blockSize; i++)
{
	var h = scr_perlin(i,maxHeight);
	for (var j = 0;j<h;j++)
	{
		var xx = blockSize/2 + i * blockSize;
		var yy = blockSize/2 + room_height - blockSize - (j*blockSize);
		scr_placeBlock(xx,yy,1);
	}
}