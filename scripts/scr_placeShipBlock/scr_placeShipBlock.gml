//argument0 = x;
//argument1 = y;
//argument2 = id;
//argument3 = rot;

var obj = instance_create_layer(argument0,argument1,"Instances",obj_shipbuildpart);
obj.idee = argument2;
obj.sprite_index = obj_sdb.sprite[argument2];
obj.rot = argument3;
obj.image_angle = argument3;