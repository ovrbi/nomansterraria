// xx = argument0;
// yy = argument1;
// dir = argument2;
// idee = argument3;

var part = instance_create_layer(argument0+blockSize/2,argument1+blockSize/2,"Instances",obj_shippart);
part.idee = argument3;
part.dir = argument2;
part.sprite_index = obj_sdb.sprite[argument3];
part.image_angle = (argument2-1)*90;


obj_buildManager.buildmatrix[d1v(argument0,blockSize),d1v(argument1,blockSize)] = part;