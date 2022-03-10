event_inherited();

// Can be dealt damage
damageable = true;

// Health
max_hp = 20;
hp = max_hp;

// Draw health
state_section = image_number / max_hp;

// Movement
move_speed = 1;

// Value
xp_value = 8;

scale = 1;

image_xscale = scale;
image_yscale = scale;

death_sprite = sNightMaggotDead;

in_side = false;

took_damage = false;

damage_draw_alpha = 0;
damage_draw_alpha_increment = 0.125;

last_hp = hp;
