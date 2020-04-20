// xx = argument0;
// yy = argument1;
// dir = argument2;
// idee = argument3;

var part = instance_create_layer(argument[0]+blockSize/2,argument[1]+blockSize/2,"Instances",obj_shippart);
part.idee = argument[3];
part.dir = argument[2];
part.sprite_index = obj_sdb.sprite[argument[3]];
part.image_angle = (argument[2]-1)*90;
if argument_count > 4 part.trigger = argument[4];

show_debug_message("Building: "+string(d1v(argument[0],blockSize))+";"+string(d1v(argument[1],blockSize)));
obj_messenger.buildmatrix[d1v(argument[0],blockSize),d1v(argument[1],blockSize)] = part;