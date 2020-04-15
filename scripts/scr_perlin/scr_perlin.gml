var xx = argument0;
var range = argument1 div 8;
//show_debug_message(xx);
worldWidth = obj_WorldManager.worldWidth;
chunkSize = obj_WorldManager.chunkSize;
xx = m0d(xx,(worldWidth*chunkSize));

var noise = d1v(argument1, 2);

var chunkLength = 32;
//xx+=10000000000000000;

while (chunkLength > 0)
{
	var chunkIndex = d1v(xx, chunkLength);
	var chunkIndex1 = d1v(m0d((xx+chunkLength),(worldWidth*chunkSize)),chunkLength);
	var prog = (xx % chunkLength)/chunkLength;
 
	//show_debug_message(chunkIndex%worldWidth);
	var left_random = scr_randomSeed(chunkIndex, range);
	var right_random = scr_randomSeed(chunkIndex1,range);
 
	noise += (1-prog)*left_random+prog*right_random;
	chunkLength = chunkLength div 2;
	range = range / 1.75;
}
return noise;