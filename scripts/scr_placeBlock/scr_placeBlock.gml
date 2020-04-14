//argument0 = x
//argument1 = y
//argument2 = id

var sprite = -1;
var breaktime = -1;
switch (argument2)
{
	case 1:
		sprite = sp_dirt2;
		breaktime = 40;
	break;
	
	case 2:
		sprite = sp_dirt2;
		breaktime = 80;
	break;
	
}
if (sprite != -1) && (breaktime != -1) 
{
	var block = instance_create_layer(argument0,argument1,"Instances",obj_block);
	block.sprite_index = sprite;
	block.breaktime = breaktime;
}