/// @description Insert description here
// You can write your code in this editor
draw_self();

if (idee = 0) || (idee = 9)
{
	draw_sprite(sp_shipbuild_delete,0,x,y);
}
else if (idee = 8)
{
	draw_sprite(sp_shipbuild_save,0,x,y);
}
else if (obj_shipbuild_parent.slot_id[idee] != -1)
{
	draw_sprite(obj_sdb.sprite[obj_shipbuild_parent.slot_id[idee]],0,x,y);
}

//draw_text(x,y,string(obj_shipbuild_parent.rot))