/// @description Insert description here
//movement
xkey = 0;
ykey = 0;
dir = 1;

onship = 0;

spd = 1.6;
xsp = 0;
ysp = 0;
grav = 0.2;
jumpspeed = 3.2;
falldamage = 0;

swipe_time = -1;
swipe_maxtime = 15;

col = c_white;
hit = 0;
stun = 0;

instance_create_layer(x,y,"UI",obj_camera);
instance_create_layer(x,y,"OverUI",obj_mouse);
instance_create_layer(x,y,"OverUI",obj_select);

//stats
maxhp = 10;
hp = maxhp;

damage = 3;

//animation
image_speed = .2;