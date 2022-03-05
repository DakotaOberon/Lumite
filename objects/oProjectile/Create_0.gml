// Parent projectile struct;
P = noone;

is_primary = false;

// Values from parent
hp = 0;

// Local bonuses (Usually gained from kills)
local_size_bonus = 0;
local_speed_bonus = 0;
local_damage_bonus = 0;

// Movement values
dir = 90;
xMove = 0;
yMove = 0;

max_dir = 160;
min_dir = 20;

// Counters
kills = 0;

// Other
can_bounce = true;

if (place_meeting(x, y, oCollidable)) {
	can_bounce = false;
	alarm[0] = 2;
}

recent_collisions = [];
alarm[1] = 60;
alarm[2] = 2;

scale = 1;

image_xscale = scale;
image_yscale = scale;

draw_dir = dir;

can_bounce_on_shield = false;

max_offset = 45;