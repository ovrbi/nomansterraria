//argument0 = x;
//argument1 = y;
//argument2 = id;
//argument3 = amount;

for (var c = 0; c < argument3; c++)
{
	var drop = instance_create_layer(argument0,argument1,"Instances",obj_drop);
	
	drop.sprite_index = obj_idb.sprite[obj_idb.drop[argument2]];
	drop.idee = obj_idb.drop[argument2];
}