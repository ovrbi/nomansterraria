/// @description Insert description here
// You can write your code in this editor
if (room != rm_space && obj_messenger.camready){

var xx = obj_player.x;
var yy = obj_player.y;
var begx = d1v((xx - camera_get_view_width(view_camera[0])), convrate);
var endx = d1v((xx + camera_get_view_width(view_camera[0])), convrate);
var begy = d1v((yy - camera_get_view_height(view_camera[0])), convrate);
var endy = d1v((yy + camera_get_view_height(view_camera[0])), convrate);

dtime = current_time;



//show_debug_message(ds_stack_size(block_pool));
//show_debug_message("#"+string(stx) + ";" + string(sty)+"//"+string(enx)+";"+string(eny));
//show_debug_message("&"+string(begx) + ";" + string(begy)+"//"+string(endx)+";"+string(endy));

/*if(ds_queue_size(block_pool)<10000){
	for (var i = ds_queue_size(block_pool);i<10000;i++){
		ds_queue_enqueue(block_pool,instance_create_layer(0,-1000,"Instances",obj_block));
	}
}*/
//*
for (var i = begx;i<=endx;i++){
	for (var j = begy;j<=endy;j++){
		scr_keepChunk(i,j,true);
	}
}
//*/


//ds_grid


/*

for (;begx<stx+1; stx--)
	for(var i = sty; i<=eny;i++){
		//scr_loadChunk(stx-1, i);
		ds_queue_enqueue(load_queue,[0,stx-1,i]);
	}

for (;begy<sty+1; sty--)
	for(var i = stx; i<=enx;i++){
		//scr_loadChunk(i, sty-1);
		ds_queue_enqueue(load_queue,[0,i,sty-1]);
	}


for (;endx+1>enx; enx++)
	for(var i = sty; i<=eny;i++){
		//scr_loadChunk(enx+1, i);
		ds_queue_enqueue(load_queue,[0,enx+1,i]);
	}

	//show_debug_message(string(eny)+"<"+string(endy));
for (;endy+1>eny; eny++)
	for(var i = stx; i<=enx;i++){
		//scr_loadChunk(i, eny+1);
		ds_queue_enqueue(load_queue,[0,i,eny+1]);
	}



	for (;begx>stx+1; stx++)
	for(var i = sty; i<=eny;i++){
		//scr_unloadChunk(stx, i);
		ds_queue_enqueue(load_queue,[1,stx,i]);
	}

for (;begy>sty+1; sty++)
	for(var i = stx; i<=enx;i++){
		//scr_unloadChunk(i, sty);
		ds_queue_enqueue(load_queue,[1,i,sty]);
	}

for (;endx+1<enx; enx--)
	for(var i = sty; i<=eny;i++){
		//scr_unloadChunk(enx, i);
		ds_queue_enqueue(load_queue,[1,enx,i]);
	}

//show_debug_message(string(eny)+">"+string(endy));
for (;endy+1<eny; eny--)
	for(var i = stx; i<=enx;i++){
		//scr_unloadChunk(i, eny);
		ds_queue_enqueue(load_queue,[1,i,eny]);
	}*/

//*


/*repeat 64
if (!ds_queue_empty(load_queue)){
	var arr2 = ds_queue_dequeue(load_queue);
	//if (chunkt[m0d(arr2[0],worldWidthc),arr2[1]]>0)
	scr_loadChunk(arr2[0],arr2[1]);
	
	
}*/



//show_debug_message(ds_queue_size(load_queue));
//*/

//for (; loadstep<worldHeightc*worldWidthc)


/*
for (var i = 0;i<worldWidthc;i++){
	for (var j = 0; j<worldHeightc;j++){
		if(chunkt[i,j]-- == 0){
			scr_unloadChunk(chunkw[i,j],j);
		}
		if (chunkt[i,j]<0) chunkt[i,j] = -1;
	}
}
//*/
//ds_grid_add_region(chunkt,0,0,worldWidthc-1,worldHeightc-1,-1);
}