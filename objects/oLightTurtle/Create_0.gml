// Inherit the parent event
event_inherited();

// Health
max_hp = 15 + (spawn_per * 40);
hp = max_hp;
last_hp = hp;

// Draw health
state_section = image_number / max_hp;

// Movement
move_speed = 0.25;

death_sprite = sLightTurtleDead;

shoot_speed = 360;
can_shoot = false;
has_shot = false;

ballista_dir = 0;
ballista_sub_img = 0;

scale = 2;

xp_value = 13;
