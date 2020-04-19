// xx = argument0;
// yy = argument1;
// dir = argument2;
// idee = argument3;
// ship = argument4;

var part = instance_create_layer(argument0,argument1,"Instances",obj_shippart);
part.idee = argument3;
part.dir = argument2;
part.ship = argument4;
part.sprite = obj_sdb.sprite[argument3];


ship.shipmatrix[d1v(argument0,blockSize),d1v(argument1,blockSize)] = part;