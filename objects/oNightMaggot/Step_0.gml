// Inherit the parent event
event_inherited();

if (hp <= max_hp / 2 && !is_cacoon) {
	is_cacoon = true;
	sprite_index = sNightCacoon;
	death_sprite = sNightCacoonDead;
	move_speed = 0;
	alarm[1] = 300;
}
