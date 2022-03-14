draw_self();
draw_sprite_ext(global.picks.character, 0, x + c_x_offset, y + c_y_offset, 1, 1, 0, c_white, 1);



var P = global.projectile;
var w_section = 8 / global.player.held_projectiles;
for (var i = 0; i < global.player.held_projectiles; i++) {
	draw_sprite_ext(P.weapon, 0, x + 16 + (i * w_section), y + 16, 0.5, 0.5, 0, P.frame, 1);
	draw_sprite_ext(P.weapon, 1, x + 16 + (i * w_section), y + 16, 0.5, 0.5, 0, P.alt, 1);
}
draw_text(x + 24, y + 16, global.player.held_projectiles);

draw_set_alpha(0.3);
draw_line_width_color(x, y, x + lengthdir_x(45, draw_left_launch_angle), y + lengthdir_y(45, draw_left_launch_angle), 2, c_red, c_red);

draw_line_width_color(x, y, x + lengthdir_x(45, draw_right_launch_angle), y + lengthdir_y(45, draw_right_launch_angle), 2, c_red, c_red);

draw_line_width_color(x, y, x, y - 45, 2, c_red, c_red);
draw_set_alpha(1);
