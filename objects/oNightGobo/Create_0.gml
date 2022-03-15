// Inherit the parent event
event_inherited();

in_defense = false;

// Health
max_hp = 20;
hp = max_hp;
last_hp = hp;

// Draw health
state_section = image_number / max_hp;

// Movement
normal_speed = 0.5;
move_speed = normal_speed;

death_sprite = sNightGoboDead;

scale = 1.5;

image_xscale = scale;
image_yscale = scale;
