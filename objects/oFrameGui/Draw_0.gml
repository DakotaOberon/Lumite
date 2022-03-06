// Draw frame slots
draw_circle_color(x, y, 16, c_white, c_grey, 0);
draw_circle_color(x, y, 16, c_black, c_black, 1);
draw_circle_color(x, y, 15, c_black, c_black, 1);

draw_circle_color(x, y - 32, 16, c_white, c_grey, 0);
draw_circle_color(x, y - 32, 16, c_black, c_black, 1);
draw_circle_color(x, y - 32, 15, c_black, c_black, 1);

// Draw frame icons
draw_sprite(sFrameIcon, frame_icon, x, y);
draw_sprite(sFrameIcon, alt_icon, x, y - 32);
