/// @description Insert description here
// You can write your code in this editor
var xx = obj_player.x;
var yy = obj_player.y;
var begx = d1v((xx - camera_get_view_width(view_camera[0])), blockSize * chunkSize);
var endx = d1v((xx + camera_get_view_width(view_camera[0])), blockSize * chunkSize);
var begy = d1v((yy - camera_get_view_height(view_camera[0])), blockSize * chunkSize);
var endy = d1v((yy + camera_get_view_height(view_camera[0])), blockSize * chunkSize);

//show_debug_message("#"+string(stx) + ";" + string(sty)+"//"+string(enx)+";"+string(eny));
//show_debug_message("&"+string(begx) + ";" + string(begy)+"//"+string(endx)+";"+string(endy));

for (;begx<stx+1; stx--)
	for(var i = sty; i<=eny;i++){
		scr_loadChunk(stx-1, i);
	}

for (;begy<sty+1; sty--)
	for(var i = stx; i<=enx;i++){
		scr_loadChunk(i, sty-1);
	}


for (;endx+1>enx; enx++)
	for(var i = sty; i<=eny;i++){
		scr_loadChunk(enx+1, i);
	}

	//show_debug_message(string(eny)+"<"+string(endy));
for (;endy+1>eny; eny++)
	for(var i = stx; i<=enx;i++){
		scr_loadChunk(i, eny+1);
	}



for (;begx>stx+1; stx++)
	for(var i = sty; i<=eny;i++){
		scr_unloadChunk(stx, i);
	}

for (;begy>sty+1; sty++)
	for(var i = stx; i<=enx;i++){
		scr_unloadChunk(i, sty);
	}

for (;endx+1<enx; enx--)
	for(var i = sty; i<=eny;i++){
		scr_unloadChunk(enx, i);
	}

//show_debug_message(string(eny)+">"+string(endy));
for (;endy+1<eny; eny--)
	for(var i = stx; i<=enx;i++){
		scr_unloadChunk(i, eny);
	}
