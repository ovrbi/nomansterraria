/// @description Insert description here
// You can write your code in this editor
//show_debug_message(obj_messenger.buildWidth);
maxWidth = obj_messenger.buildWidth;
maxHeight = maxWidth;



for (var i = 0; i < maxWidth;i++)
	for (var j = 0; j < maxHeight; j++)
	buildmatrix[i,j] = 0;

/*
if (obj_messenger.ship == noone){
	ship = instance_create_layer(0,0,"Instances",obj_ship);
	ship.persistent = true;
	
	
}
else {
	ship = obj_messenger.ship;
	ship.x=0;
	ship.y=0;
}*/

//TEMPORARY
show_debug_message("TEMPORARY FEATURE IN PROGRESS");
if (maxWidth == 5){
	scr_placepart(blockSize*2, 0, 3, 6,vk_space);
	scr_placepart(blockSize*1, blockSize*1, 0, 0);
	scr_placepart(blockSize*2, blockSize*1, 0, 0);
	scr_placepart(blockSize*3, blockSize*1, 0, 0);
	scr_placepart(blockSize*1, blockSize*2, 0, 0);
	scr_placepart(blockSize*2, blockSize*2, 0, 0);
	scr_placepart(blockSize*3, blockSize*2, 0, 0);
	
	scr_placepart(blockSize*0, blockSize*1, 0, 2,ord("D"));
	scr_placepart(blockSize*4, blockSize*1, 2, 2,ord("A"));
	
	scr_placepart(blockSize*1, blockSize*3, 0, 0);
	scr_placepart(blockSize*2, blockSize*3, 0, 0);
	scr_placepart(blockSize*3, blockSize*3, 0, 0);
	scr_placepart(blockSize*1, blockSize*4, 1, 2,ord("W"));
	
	scr_placepart(blockSize*3, blockSize*4, 1, 2,ord("W"));
}

if (maxWidth == 4){
	scr_placepart(0,0,0,0);
	scr_placepart(0,blockSize,0,0);
	scr_placepart(0,blockSize*2,0,0);
	scr_placepart(0,blockSize*3,0,0);
}

if (maxWidth == 6){
	scr_placepart(blockSize*0, blockSize*5, 1, 6,vk_space);
	scr_placepart(blockSize*1, blockSize*5, 1, 6,vk_space);
	scr_placepart(blockSize*2, blockSize*5, 1, 6,vk_space);
	scr_placepart(blockSize*3, blockSize*5, 1, 6,vk_space);
	scr_placepart(blockSize*4, blockSize*5, 1, 6,vk_space);
	scr_placepart(blockSize*5, blockSize*5, 1, 6,vk_space);
	
	scr_placepart(blockSize*0, blockSize*4, 0, 0);
	scr_placepart(blockSize*1, blockSize*4, 0, 0);
	scr_placepart(blockSize*2, blockSize*4, 0, 0);
	scr_placepart(blockSize*3, blockSize*4, 0, 0);
	scr_placepart(blockSize*4, blockSize*4, 0, 0);
	scr_placepart(blockSize*5, blockSize*4, 0, 0);
	
	scr_placepart(blockSize*1, blockSize*3, 0, 0);
	scr_placepart(blockSize*1, blockSize*2, 0, 0);
	//scr_placepart(blockSize*1, blockSize*1, 0, 0);
	//scr_placepart(blockSize*1, blockSize*0, 0, 0);
	
	scr_placepart(blockSize*4, blockSize*3, 0, 0);
	scr_placepart(blockSize*4, blockSize*2, 0, 0);
	//scr_placepart(blockSize*4, blockSize*1, 0, 0);
	//scr_placepart(blockSize*4, blockSize*0, 0, 0);
	
	scr_placepart(blockSize*0, blockSize*2, 1, 2,ord("W"));
	scr_placepart(blockSize*5, blockSize*2, 1, 2,ord("W"));
	
	scr_placepart(blockSize*0, blockSize*3, 0, 2,ord("D"));
	scr_placepart(blockSize*5, blockSize*3, 2, 2,ord("A"));
	
	scr_placepart(blockSize*2, blockSize*3, 0, 5,ord("Q"));
	scr_placepart(blockSize*3, blockSize*3, 2, 5,ord("Q"));
}

obj_messenger.maxHeight = maxHeight;
obj_messenger.maxWidth = maxWidth;
obj_messenger.buildmatrix = buildmatrix;
obj_camera.alarm[0] = 1;
//room_goto(1);