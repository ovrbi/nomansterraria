/// @description Insert description here
// You can write your code in this editor
parent = 0;

//image_alpha = .5;

for (var i = 0; i < 10; i++)
{
	slot[i] = instance_create_layer(x,y,"UI",obj_shipbuild_slot);
	slot[i].idee = i;
}
for (var i = 0; i < 2; i++)
{
	rotate[i] = instance_create_layer(x,y,"UI",obj_shipbuild_rotate);
	rotate[i].idee = i;
	if (i = 1) rotate[i].sprite_index = sp_shipbuild_rotate_right;
}