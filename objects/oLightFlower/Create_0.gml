// Inherit the parent event
event_inherited();

// Health
max_hp = 4;
hp = max_hp;
last_hp = hp;

// Draw health
state_section = image_number / max_hp;

// Movement
move_speed = 0;

death_timer = 420;

empower_range = 128;

empower_list = ds_list_create();
alarm[1] = 60;
