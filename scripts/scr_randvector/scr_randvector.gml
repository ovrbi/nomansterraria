var seed0 = argument0;

seed0 += obj_WorldManager.seed;

random_set_seed(seed0);
var angle = random_range(0, 2*pi);
arr[0] = sin(angle);
arr[1] = cos(angle);
return arr;