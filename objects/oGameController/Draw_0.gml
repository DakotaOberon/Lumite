if (draw_boss_wave_notification) {
	draw_set_font(fntTitle);
	
	// Draw Text Offset
	draw_set_color(c_black);
	draw_text(horde_text_x + 4, horde_text_y + 4, horde_text_start);
	draw_text(horde_text_x + horde_start_w + 4, horde_text_y + 4, horde_text);
	draw_text(horde_text_x + horde_mid_w + 4, horde_text_y + 4, horde_text_end);
	draw_set_color(c_white);

	// Draw Text
	draw_text(horde_text_x, horde_text_y, horde_text_start);
	
	draw_set_color(highlight_color);
	draw_text(horde_text_x + horde_start_w, horde_text_y, horde_text);
	draw_set_color(c_white);
	
	draw_text(horde_text_x + horde_mid_w, horde_text_y, horde_text_end);

	draw_set_font(fntDefault);
}
