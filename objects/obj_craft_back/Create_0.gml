/// @description Insert description here
// You can write your code in this editor
image_speed = 0;


idee = -1;
for (var i = 0; i <= 14; i++)
{
	slot_id[i] = 3;
	slot[i] = instance_create_layer(x,y,"UI",obj_craft_slot);
	slot[i].idee = i;
	slot[i].parent = id;
}
slot_id[6] = 28;

button = instance_create_layer(x,y,"UI",obj_craft_button);
button.parent = id;
close = instance_create_layer(x,y,"UI",obj_craft_close);
close.parent = id;

for (var i = 15; i <= 17; i++)
{
	slot_id[i] = 2;
	mat_amount[i] = 4+i;
	slot[i] = instance_create_layer(x,y,"UI",obj_craft_slot);
	slot[i].idee = i;
	slot[i].parent = id;
}

mat_count = 3; //[1; 3]

chosen = 4;


destroy = 0;