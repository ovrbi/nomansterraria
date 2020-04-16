var seed0 = argument0;
var range = argument1;

seed0 += obj_WorldManager.seed;

random_set_seed(seed0);
rand = irandom_range(0, range);
return rand;