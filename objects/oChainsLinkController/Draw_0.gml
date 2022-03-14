for (var i = 0; i < array_length(projectiles); i++) {
	// Get number of chain links
	if (instance_exists(projectiles[i])) {
		var p = projectiles[i];
		var c_ls = ceil(point_distance(x, y, p.x, p.y) / ch_l_len);
		var p_dir = point_direction(x, y, p.x, p.y);
		var x1 = lengthdir_x(ch_l_len, p_dir);
		var y1 = lengthdir_y(ch_l_len, p_dir);

		for (var j = 0; j < c_ls; j++) {
			draw_sprite_ext(sChainsLink, 0, x + (j * x1), y + (j * y1), 1, 1, p_dir - 45, c_white, 1);
		}
	}
}
