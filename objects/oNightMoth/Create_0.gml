// Inherit the parent event
event_inherited();

death_sprite = sNightMothDead;
move_speed = 1;

// Health
max_hp = 12 + (spawn_per * 12);
hp = max_hp;
last_hp = hp;

// Draw health
state_section = image_number / max_hp;

xp_value = 6;
