/// @description Insert description here
// You can write your code in this editor
mode = 0; //0 = overworld; 1 = battle;
image_alpha = 0;

mouse_mode = 0; //0 = obj_mouse; 1 = obj_select place; 3 == obj_select destroy

//inventory
inv_expand = -1; //-1 = retracted; 1 = expanded
hotbar = 0;
for (var i = 0; i <= 50; i++)
{
	inv_id[i] = 0;
	inv_amount[i] = 0;
}
inv_id[2] = 3;
inv_amount[2] = 89;
inv_id[3] = 2;
inv_amount[3] = 9;
inv_id[7] = 1;
inv_amount[7] = 9;
inv_id[8] = 2;
inv_amount[8] = 21;
inv_id[14] = 2;
inv_amount[14] = 21;
inv_id[23] = 2;
inv_amount[23] = 21;
inv_id[35] = 2;
inv_amount[35] = 21;
inv_id[17] = 2;
inv_amount[17] = 21;
inv_id[28] = 2;
inv_amount[28] = 21;
inv_id[40] = 2;
inv_amount[40] = 21;

inv_id[5] = 4;
inv_amount[5] = 1;

//inventory UI objects
inv_back = instance_create_layer(x,y,"UI_back",obj_inventory_back);
for (var i = 0; i <= 50; i++)
{
	inv[i] = instance_create_layer(x,y,"UI",obj_inventory_slot);
	inv[i].idee = i;
	
}
//left hotbar sprite
for (var i = 0; i <= 4; i++)
{
	inv[i].sprite_index = sp_inventory_slot1;
}
//right hotbar sprite
for (var i = 5; i <= 10; i++)
{
	inv[i].sprite_index = sp_inventory_slot2;
}
//inventory slots
for (var i = 1; i <= 3; i++)
{
	for (var j = 1; j <= 5; j++)
	{
		inv[i*10 + j].sprite_index = sp_inventory_slot1;
	}
	for (var j = 6; j <= 10; j++)
	{
		inv[i*10 + j].sprite_index = sp_inventory_slot2;
	}
}
inv_button = instance_create_layer(x,y,"UI",obj_inventory_button);
inv[0].image_index = 1;
inv[5].sprite_index = sp_inventory_MM;