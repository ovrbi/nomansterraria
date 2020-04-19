/// @description Insert description here
// You can write your code in this editor
image_speed = 0;


idee = obj_mouse.table;
for (var i = 0; i <= 14; i++)
{
	slot_id[i] = 0;
	if (obj_cdb.cum[idee-20]+i < obj_cdb.cum[idee-19]){
		slot_id[i] = obj_cdb.productid[obj_cdb.cum[idee-20]+i];
		//show_debug_message(obj_cdb.productid[obj_cdb.cum[idee-20]+i]);
	}
	slot[i] = instance_create_layer(x,y,"UI",obj_craft_slot);
	slot[i].idee = i;
	slot[i].parent = id;
}
//slot_id[6] = 28;

button = instance_create_layer(x,y,"UI",obj_craft_button);
button.parent = id;
close = instance_create_layer(x,y,"UI",obj_craft_close);
close.parent = id;

mat_count = 0;
for (var i = 15; i <= 17; i++)
{
	slot_id[i] = 0;
	mat_amount[i] = 0;
	
	if (obj_cdb.cum[idee-20]+4 < obj_cdb.cum[idee-19]){
	slot_id[i] = obj_cdb.ingredientid[obj_cdb.cum[idee-20]+4,i-15];
	if (slot_id[i]!= 0) mat_count++;
	mat_amount[i] = obj_cdb.ingredientcount[obj_cdb.cum[idee-20]+4,i-15];
	}
	slot[i] = instance_create_layer(x,y,"UI",obj_craft_slot);
	slot[i].idee = i;
	slot[i].parent = id;
}
if (mat_count == 0) mat_count = 1;
//mat_count = 3; //[1; 3]

chosen = 4;


destroy = 0;