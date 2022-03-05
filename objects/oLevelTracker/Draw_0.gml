var P = global.projectile;

var play = global.player;

draw_sprite_ext(sprite_index, 1, x, y, scale, scale, 0, P.frame, 1);
draw_sprite_ext(sprite_index, 0, x, y, scale, scale, 0, P.alt, 1);

// Draw current Level
draw_text(x + (34 * scale), y + (3 * scale), play.level);

// Draw XP
draw_text(x + (20 * scale), y + (14 * scale), play.xp);

// Draw XP needed
draw_text(x + (37 * scale), y + (14 * scale), play.xp_needed_to_level);
