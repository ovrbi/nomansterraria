var xx = argument0;
var range = argument1 div 8;
var perlin_cache = obj_WorldManager.perlin_cache;
//show_debug_message(xx);
xx = m0d(xx,(chunkSize*worldWidth));
if (perlin_cache[xx] == "null"){
var noise = d1v(argument1, 2);

var chunkLength = 32;
//xx+=10000000000000000;

while (chunkLength > 0)
{
	var chunkIndex = d1v(xx, chunkLength);
	var chunkIndex1 = d1v(m0d((xx+chunkLength),(chunkSize*worldWidth)),chunkLength);
	var prog = (xx % chunkLength)/chunkLength;
 
	//show_debug_message(chunkIndex%worldWidth);
	var left_random = scr_randomSeed(chunkIndex, range);
	var right_random = scr_randomSeed(chunkIndex1,range);
 
	noise += (1-prog)*left_random+prog*right_random;
	chunkLength = chunkLength div 2;
	range = range / 1.75;
}
perlin_cache[xx] = noise;
}
else {
	noise = perlin_cache[xx];
}
//show_debug_message(noise);
return noise;