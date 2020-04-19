/// @description Insert description here
// You can write your code in this editor

for (var j = 0; j <= 4; j++)
{
	for (var i = 0; i <= 2; i++)
	{
		if (instance_exists(slot[i*5 + j]))
		{
			slot[i + j*3].x = x - 64 + i*20;
			slot[i + j*3].y = y - 40 + j*20;
		}
	}
}

if (instance_exists(button))
{
	button.x = x + 33;
	button.y = y + 42;
}

if (mat_count == 3)
{
	for (i = 15; i <= 17; i++)
	{
		if (instance_exists(slot[i]))
		{
			slot[i].x = x + 3 + (i-15)*30;
			slot[i].y = y - 31;
			if (i == 15) slot[i].sprite_index = sp_inventory_slot1;
			else if (i == 16) slot[i].sprite_index = sp_inventory_slot3;
			else slot[i].sprite_index = sp_inventory_slot2;
		}
	}
}
else if (mat_count == 2)
{
	for (i = 15; i <= 16; i++)
	{
		if (instance_exists(slot[i]))
		{
			slot[i].x = x + 18 + (i-15)*30;
			slot[i].y = y - 31;
			if (i == 15) slot[i].sprite_index = sp_inventory_slot1;
			else slot[i].sprite_index = sp_inventory_slot2;
		}
	}
}
else if (mat_count == 1)
{
	if (instance_exists(slot[i]))
	{
		slot[i].x = x + 9 + (i-15)*30;
		slot[i].y = y - 31;
		slot[i].sprite_index = sp_inventory_slot3;
	}
}