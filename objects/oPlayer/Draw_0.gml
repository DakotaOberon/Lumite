draw_self();

//draw_text(x, y, global.player.held_projectiles);

//var P = global.projectile;
//draw_sprite_ext(P.weapon, 0, x, y - 32, P.size, P.size, 45, P.frame, 1);
//draw_sprite_ext(P.weapon, 1, x, y - 32, P.size, P.size, 45, P.alt, 1);

draw_set_alpha(0.3);
draw_line_width_color(x, y, x + lengthdir_x(45, draw_left_launch_angle), y + lengthdir_y(45, draw_left_launch_angle), 2, c_red, c_red);

draw_line_width_color(x, y, x + lengthdir_x(45, draw_right_launch_angle), y + lengthdir_y(45, draw_right_launch_angle), 2, c_red, c_red);

draw_line_width_color(x, y, x, y - 45, 2, c_red, c_red);
draw_set_alpha(1);
