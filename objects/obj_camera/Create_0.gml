/// @description Insert description here
// You can write your code in this editor
mode = 0; //0 = overworld; 1 = battle;
image_alpha = 0;

mouse_mode = 0; //0 = obj_mouse; 1 = obj_select place; 3 == obj_select destroy

//inventory
hotbar = 0;
for (var i = 0; i <= 10; i++)
{
	inv_id[i] = 0;
	inv_amount[i] = 0;
}
inv_id[3] = 1;
inv_amount[3] = 89;
inv_id[5] = 4;
inv_amount[5] = 1;

//inventory UI objects
inv_back = instance_create_layer(x,y,"UI_back",obj_inventory_back);
for (var i = 0; i <= 10; i++)
{
	inv[i] = instance_create_layer(x,y,"UI",obj_inventory_slot);
	inv[i].idee = i;
}
inv[0].image_index = 1;
inv[5].sprite_index = sp_inventory_MM;