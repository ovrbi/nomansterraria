/// @description Insert description here
// You can write your code in this editor
if (parent.mat_amount[15] <= parent.mat_total[15]) && (parent.mat_amount[16] <= parent.mat_total[16]) && (parent.mat_amount[17] <= parent.mat_total[17])
{
	if (place_meeting(x,y,obj_mouse)) image_index = 1;
	else image_index = 0;
	text = "CRAFT"
}
else 
{
	image_index = 2;
	text = "Missing Materials"
}