/// @description Insert description here
// You can write your code in this editor

//position slots
for (var i = 0; i < 8; i++)
{
	slot[i].x = x - 146;
	slot[i].y = y - 76 + 20*i;
}

for (var i = 8; i < 10; i++)
{
	slot[i].x = x + 126 + (i-8)*20;
	slot[i].y = y - 76;
}

for (var i = 0; i < 2; i++)
{
	rotate[i].x = x - 151 + i*10;
	rotate[i].y = y + 81;
}