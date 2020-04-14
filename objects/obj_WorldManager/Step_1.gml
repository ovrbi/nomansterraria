/// @description Insert description here
// You can write your code in this editor
var xx = obj_player.x;
var yy = obj_player.y;
var begx = (xx - camera_get_view_width(view_camera[0]))div blockSize div chunkSize;
var endx = (xx + camera_get_view_width(view_camera[0]))div blockSize div chunkSize;
var begy = (yy - camera_get_view_height(view_camera[0]))div blockSize div chunkSize;
var endy = (yy + camera_get_view_height(view_camera[0]))div blockSize div chunkSize;

if (stx>begx){
	for (;begx<stx; --stx)
		for(var i = sty; i<=eny;i++){
			scr_loadChunk(stx, i);
		}
}
if (sty>begy){
	for (;begy<sty; --sty)
		for(var i = stx; i<=enx;i++){
			scr_loadChunk(i, sty);
		}
}
if (enx<endx){
	for (;endx>enx; ++enx)
		for(var i = sty; i<=eny;i++){
			scr_loadChunk(enx, i);
		}
}
if (eny<endy){
	//show_debug_message(string(eny)+"<"+string(endy));
	for (;endy>eny; ++eny)
		for(var i = stx; i<=enx;i++){
			scr_loadChunk(i, eny);
		}
}

if (stx+1<begx){
	for (;begx>stx+1; ++stx)
		for(var i = sty; i<=eny;i++){
			scr_unloadChunk(stx, i);
		}
}
if (sty+1<begy){
	for (;begy>sty+1; ++sty)
		for(var i = stx; i<=enx;i++){
			scr_unloadChunk(i, sty);
		}
}
if (enx>endx+1){
	for (;endx+1<enx; --enx)
		for(var i = sty; i<=eny;i++){
			scr_unloadChunk(enx, i);
		}
}

if (eny>endy+1){
	show_debug_message(string(eny)+">"+string(endy));
	for (;endy+1<eny; --eny)
		for(var i = stx; i<=enx;i++){
			scr_unloadChunk(i, eny);
		}
}