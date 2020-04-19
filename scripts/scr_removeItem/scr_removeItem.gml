//argument0 = idee
//argument1 = amount

var amount = argument1;
for (var p = 0; p <= 50; p++)
{
	if (obj_camera.inv_id[p] == argument0)
	{
		for (var o = 0; o < amount; amount--)
		{
			if (obj_camera.inv_amount[p] > 0)
			{
				obj_camera.inv_amount[p]--;
			}
			else break;
		}
	}
}