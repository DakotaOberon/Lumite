event_inherited();

// Can be dealt damage
damageable = true;

// Health
max_hp = 8;
hp = max_hp;
last_hp = hp;

// Draw health
state_section = image_number / max_hp;

// Movement
move_speed = 0.5;

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

can_shoot = true;

// Height of sprite
var spr_h = sprite_height * image_yscale;

// Opposite end of enemy
y_end = spr_h * (-global.attack_dir);

// When to get destroyed
y_edge = 0;

// Add room height if attacking down
if (global.attack_dir < 0) {
	y_end += room_height;
}
