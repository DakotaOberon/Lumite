/// @description Reduce damage alpha

if (damage_draw_alpha > 0) {
	damage_draw_alpha -= damage_draw_alpha_increment;
	alarm[0] = 5;
} else if (damage_draw_alpha < 0) {
	damage_draw_alpha = 0;
}
