draw_set_alpha(0.8);

// Selection border draw traits
var x1, y1, x2, y2, c1, c2, c3, w;

// Icon draw traits
var l_c, n_c, l_a, n_a, l_r, n_r, l_s, n_s;

var t_c = c_black;

// Set draw traits
w = 8;
switch (current_selection) {
	case gm_light:
		x1 = b_s;
		y1 = b_s;
		x2 = h_x;
		y2 = l_y2;
		c1 = l_b_c[b_c1];
		c2 = l_b_c[b_c2];
		c3 = l_b_c[b_c3];
		l_c = l_sel_c;
		n_c = reg_c;
		l_a = 1;
		n_a = 0.4;
		l_r = curr_rot;
		n_r = 0;
		l_s = icon_scale;
		n_s = icon_scale - 1;
	break;
	case gm_night:
		x1 = h_x;
		y1 = b_s;
		x2 = n_x2;
		y2 = l_y2;
		c1 = n_b_c[b_c1];
		c2 = n_b_c[b_c2];
		c3 = n_b_c[b_c3];
		n_c = n_sel_c;
		l_c = reg_c;
		n_a = 1;
		l_a = 0.4;
		n_r = curr_rot;
		l_r = 0;
		n_s = icon_scale;
		l_s = icon_scale - 1;
	break;
}

// Draw Light option
draw_roundrect_color_ext(b_s, b_s, h_x, l_y2, b_r, b_r, l_c, l_c, 0);
draw_roundrect_color_ext(b_s, b_s, h_x, l_y2, b_r, b_r, t_c, t_c, 1);
draw_roundrect_color_ext(b_s + 1, b_s + 1, h_x - 1, l_y2 - 1, b_r, b_r, t_c, t_c, 1);

// Draw Night option
draw_roundrect_color_ext(h_x, b_s, n_x2, l_y2, b_r, b_r, n_c, n_c, 0);
draw_roundrect_color_ext(h_x, b_s, n_x2, l_y2, b_r, b_r, t_c, t_c, 1);
draw_roundrect_color_ext(h_x + 1, b_s + 1, n_x2 - 1, l_y2 - 1, b_r, b_r, t_c, t_c, 1);


// Draw Selection border
draw_rectangle_border(x1, y1, x2, y2, c1, c2, c3, w);
draw_rectangle_border(x1, y1, x2, y2, t_c, t_c, t_c, w, true);
draw_rectangle_border(x1 + 1, y1 + 1, x2 - 1, y2 - 1, t_c, t_c, t_c, w, true);

// Draw Gamemode symbols
draw_sprite_ext(sGamemodeSymbol, gm_light, l_icon_x, l_icon_y, l_s, l_s, l_r, c_white, l_a);
draw_sprite_ext(sGamemodeSymbol, gm_night, n_icon_x, n_icon_y, n_s, n_s, n_r, c_white, n_a);

// Start text
draw_text(start_text_x, start_text_y, start_text);

draw_set_alpha(1);
