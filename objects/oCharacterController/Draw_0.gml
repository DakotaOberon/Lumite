var x1, y1, x2, y2;
x1 = -40; y1 = -40; x2 = -40; y2 = -40;

var c_c = reg_c;
var f_c = reg_c;
var a_c = reg_c;

var t_c = c_black;

var b_r = 16;

var char_spr = global.picks.character;
var frame_spr = global.picks.frame;
var alt_spr = global.picks.alt;

switch(section) {
	case Pick.character:
		char_spr = options[selection];
		x1 = coords.char.x1;
		y1 = coords.char.y1;
		x2 = coords.char.x2;
		y2 = coords.char.y2;
		c_c = sel_c;
	break;
	case Pick.frame:
		frame_spr = options[selection];
		x1 = coords.frame.x1;
		y1 = coords.frame.y1;
		x2 = coords.frame.x2;
		y2 = coords.frame.y2;
		f_c = sel_c;
	break;
	case Pick.alt:
		alt_spr = options[selection];
		x1 = coords.alt.x1;
		y1 = coords.alt.y1;
		x2 = coords.alt.x2;
		y2 = coords.alt.y2;
		a_c = sel_c;
	break;
}

draw_roundrect_color_ext(coords.char.x1, coords.char.y1, coords.char.x2, coords.char.y2, b_r, b_r, c_c, c_c, 0);
draw_roundrect_color_ext(coords.char.x1, coords.char.y1, coords.char.x2, coords.char.y2, b_r, b_r, t_c, t_c, 1);
draw_roundrect_color_ext(coords.char.x1 + 1, coords.char.y1 + 1, coords.char.x2 - 1, coords.char.y2 - 1, b_r, b_r, t_c, t_c, 1);

draw_roundrect_color_ext(coords.frame.x1, coords.frame.y1, coords.frame.x2, coords.frame.y2, b_r, b_r, f_c, f_c, 0);
draw_roundrect_color_ext(coords.frame.x1, coords.frame.y1, coords.frame.x2, coords.frame.y2, b_r, b_r, t_c, t_c, 1);
draw_roundrect_color_ext(coords.frame.x1 + 1, coords.frame.y1 + 1, coords.frame.x2 - 1, coords.frame.y2 - 1, b_r, b_r, t_c, t_c, 1);

draw_roundrect_color_ext(coords.alt.x1, coords.alt.y1, coords.alt.x2, coords.alt.y2, b_r, b_r, a_c, a_c, 0);
draw_roundrect_color_ext(coords.alt.x1, coords.alt.y1, coords.alt.x2, coords.alt.y2, b_r, b_r, t_c, t_c, 1);
draw_roundrect_color_ext(coords.alt.x1 + 1, coords.alt.y1 + 1, coords.alt.x2 - 1, coords.alt.y2 - 1, b_r, b_r, t_c, t_c, 1);

if (char_spr != -1) {
	draw_sprite_ext(char_spr, 0, char_x, char_y, scale, scale, 0, c_white, 1);
}

if (frame_spr != -1) {
	draw_sprite_ext(sFrameIcon, frame_spr, frame_x, frame_y, scale, scale, 0, c_white, 1);
}

if (alt_spr != -1) {
	draw_sprite_ext(sFrameIcon, alt_spr, alt_x, alt_y, scale, scale, 0, c_white, 1);
}

// Draw Selection border
draw_rectangle_border(x1, y1, x2, y2, cols[c_1], cols[c_2], cols[c_3], border_width);
draw_rectangle_border(x1, y1, x2, y2, t_c, t_c, t_c, border_width, true);
draw_rectangle_border(x1 + 1, y1 + 1, x2 - 1, y2 - 1, t_c, t_c, t_c, border_width, true);
