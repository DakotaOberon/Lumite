if (check_surface(global.body_background)) {
	draw_surface(global.body_background, 0, 0);
}

draw_set_font(fntTitle);
// Draw text outline
draw_set_color(c_black);
draw_text(game_over_text_x - 2, 62, game_over_text);
draw_text(game_over_text_x - 2, 66, game_over_text);
draw_text(game_over_text_x + 2, 62, game_over_text);
draw_text(game_over_text_x + 2, 66, game_over_text);

draw_text(score_text_x - 2, 254, score_text);
draw_text(score_text_x - 2, 258, score_text);
draw_text(score_text_x + 2, 254, score_text);
draw_text(score_text_x + 2, 258, score_text);

draw_set_color(c_white);

draw_text(game_over_text_x, 64, game_over_text);
draw_text(score_text_x, 256, score_text);

//// New Game options
//draw_rectangle(retry_x, select_box_y, retry_x + select_box_w, select_box_y + select_box_h, 0);
//draw_text(retry_x + sel_b, select_box_y + sel_b, retry_text);

//draw_rectangle(new_game_x, select_box_y, new_game_x + select_box_w, select_box_y + select_box_h, 0);
//draw_text(new_game_x + sel_b, select_box_y + sel_b, new_game_text);

///////////////////////////////////////////////
draw_set_alpha(0.8);

// Selection border draw traits
var x1, x2, y1, y2, w;

var r_c, n_c;

var t_c = c_black;

// Set draw traits
w = 8;
switch (end_game_option) {
	case 0:
		x1 = retry_x;
		r_c = sel_c;
		n_c = reg_c;
	break;
	case 1:
		x1 = new_game_x;
		n_c = sel_c;
		r_c = reg_c;
	break;
}

x2 = x1 + select_box_w;
y1 = select_box_y;
y2 = y1 + select_box_h;

var b_r = 16;

// Draw Retry option
draw_roundrect_color_ext(retry_x, y1, retry_x + select_box_w, y2, b_r, b_r, r_c, r_c, 0);
draw_roundrect_color_ext(retry_x, y1, retry_x + select_box_w, y2, b_r, b_r, t_c, t_c, 1);
draw_roundrect_color_ext(retry_x + 1, y1 + 1, retry_x + select_box_w - 1, y2 - 1, b_r, b_r, t_c, t_c, 1);

// Draw New Game option
draw_roundrect_color_ext(new_game_x, y1, new_game_x + select_box_w, y2, b_r, b_r, n_c, n_c, 0);
draw_roundrect_color_ext(new_game_x, y1, new_game_x + select_box_w, y2, b_r, b_r, t_c, t_c, 1);
draw_roundrect_color_ext(new_game_x + 1, y1 + 1, new_game_x + select_box_w - 1, y2 - 1, b_r, b_r, t_c, t_c, 1);

// Draw Selection border
draw_rectangle_border(x1, y1, x2, y2, cols[c_1], cols[c_2], cols[c_3], w);
draw_rectangle_border(x1, y1, x2, y2, t_c, t_c, t_c, w, true);
draw_rectangle_border(x1 + 1, y1 + 1, x2 - 1, y2 - 1, t_c, t_c, t_c, w, true);

draw_set_color(c_black);
// Retry Text
draw_text(retry_text_x + 2, select_box_y + sel_b + 2, retry_text);

// New Game Text
draw_text(new_game_x + sel_b + 2, select_box_y + sel_b + 2, new_game_text);
draw_set_color(c_white);

// Retry Text
draw_text(retry_text_x, select_box_y + sel_b, retry_text);

// New Game Text
draw_text(new_game_x + sel_b, select_box_y + sel_b, new_game_text);


draw_set_alpha(fade_to_black_alpha);
draw_rectangle_color(0, 0, room_width, room_height, t_c, t_c, t_c, t_c, 0);

// Reset draw variables
draw_set_alpha(1);
draw_set_font(fntDefault);
