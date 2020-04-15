//argument0 = id


//var block = instance_place(argument0,argument1,obj_block);
var drop = instance_create_layer(argument0.x,argument0.y,"Instances",obj_drop);
	
drop.sprite_index = obj_idb.sprite[obj_idb.drop[argument0.idee]];
drop.idee = obj_idb.drop[argument0.idee];
	
instance_destroy(argument0);