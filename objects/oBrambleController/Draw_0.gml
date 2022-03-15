draw_set_alpha(0.1);
var b_h = 10 * bramble_health;
draw_rectangle_color(0, bramble_y, b_h, bramble_y2, b_col1, b_col1, b_col1, b_col1, 0);
draw_rectangle_color(0, bramble_y + (highlight_dir * 5), b_h + 5, bramble_y2, b_col1, b_col1, b_col1, b_col1, 0);
draw_rectangle_color(0, bramble_y + (highlight_dir * 10), b_h + 10, bramble_y2, b_col1, b_col1, b_col1, b_col1, 0);
draw_set_alpha(1);

for (var i = 0; i < bramble_count; i++) {
	draw_sprite_ext(sBramble, 0, i * bramble_w, bramble_y, 1, y_scale, 0, c_white, 1);
	var b_col = bramble_health > i * bramble_health_section? b_col1 : b_col2;
	draw_sprite_ext(sBrambleThorns, 0, i * bramble_w, bramble_y, 1, y_scale, 0, b_col, 1);
}
