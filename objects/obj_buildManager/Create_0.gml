/// @description Insert description here
// You can write your code in this editor
//show_debug_message(obj_messenger.buildWidth);
maxWidth = obj_messenger.buildWidth;
maxHeight = maxWidth;


if (obj_messenger.ship == noone){
	ship = instance_create_layer(0,0,"Instances",obj_ship);
	ship.persistent = true;
	for (var i = 0; i < maxWidth;i++)
	for (var j = 0; j < maxHeight; j++)
	ship.shipmatrix[i,j] = 0;
	
}
else {
	ship = obj_messenger.ship;
	ship.x=0;
	ship.y=0;
}

//TEMPORARY
show_debug_message("TEMPORARY FEATURE IN PROGRESS");
if (maxWidth = 5){
	scr_placepart(blockSize*2, 0, 0, 0, ship);
	scr_placepart(blockSize*1, blockSize*1, 0, 0, ship);
	scr_placepart(blockSize*2, blockSize*1, 0, 0, ship);
	scr_placepart(blockSize*3, blockSize*1, 0, 0, ship);
	scr_placepart(blockSize*1, blockSize*2, 0, 0, ship);
	scr_placepart(blockSize*2, blockSize*2, 0, 0, ship);
	scr_placepart(blockSize*3, blockSize*2, 0, 0, ship);
	scr_placepart(blockSize*1, blockSize*3, 0, 0, ship);
	scr_placepart(blockSize*2, blockSize*3, 0, 0, ship);
	scr_placepart(blockSize*3, blockSize*3, 0, 0, ship);
	scr_placepart(blockSize*1, blockSize*4, 1, 2, ship);
	
	scr_placepart(blockSize*3, blockSize*4, 1, 2, ship);
}

if (maxWidth == 4){
	scr_placepart(0,0,0,0,ship);
	scr_placepart(0,blockSize,0,0,ship);
	scr_placepart(0,blockSize*2,0,0,ship);
	scr_placepart(0,blockSize*3,0,0,ship);
}