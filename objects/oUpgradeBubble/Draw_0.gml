// Draw holder
draw_sprite_ext(sUpgradeHolder, 2, x, y, scale, scale, 0, c_white, 1);
draw_sprite_ext(sUpgradeHolder, 0, x, y, scale, scale, 0, global.projectile.frame, 1);
draw_sprite_ext(sUpgradeHolder, 1, x, y, scale, scale, 0, global.projectile.alt, 1);

// Draw icon
draw_sprite_ext(sUpgradeIcon, icon, x, y, scale, scale, 0, c_white, 1);

draw_set_color(c_black);
draw_text(x, y, group);
draw_set_color(c_white);
