// Inherit the parent event
event_inherited();

// Health
max_hp = 3 + (spawn_per * 21);
hp = max_hp;
last_hp = hp;

// Draw health
state_section = image_number / max_hp;

// Movement
move_speed = 0.5;

spawn_flower_timer_max = 600; // 10 Seconds
spawn_flower_timer = 600;

death_sprite = sLightHerbalistDead;

scale = 1.5;

xp_value = 9;
