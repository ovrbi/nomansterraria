/// @description Insert description here
// You can write your code in this editor

if (bt <= oldbt) bt--;
oldbt = bt;

if (parent = -1) instance_destroy();
else
{
	if (!place_meeting(x,y,parent)) || (bt < 0) instance_destroy();
	if (bt > maxbt) 
	{
		scr_destroyBlock(parent,true);
		instance_destroy();
	}
}


if (bt > maxbt/4*3) image_index = 3;
else if (bt > maxbt/2) image_index = 2;
else if (bt > maxbt/4) image_index = 1;
else image_index = 0;