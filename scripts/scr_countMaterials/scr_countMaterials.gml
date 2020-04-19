for (var i = 15; i <= 17; i++)
{
	argument0.mat_total[i] = 0;
	for (var j = 0; j <= 50; j++)
	{
		if (obj_camera.inv_id[j] == argument0.slot_id[i])
		{
			argument0.mat_total[i] += obj_camera.inv_amount[j];
		}
	}
}