/// @description Insert description here
// You can write your code in this editor
if (mouse_wheel_up()) select--;
else if (mouse_wheel_down()) select++;
if (select < 0) select = 7;
if (select > 7) select = 0;