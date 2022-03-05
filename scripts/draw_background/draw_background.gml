/**
* Draw cool background
*
* @function		draw_background(dmg_per)
* @param		{real}		dmg_per			Current damage percent of player
* @param		{real}		ally			Sub-image of ally side
* @param		{real}		enemy			Sub-image of enemy side
* @param		{real}		spr				Sprite of background
* @return		{bool}
*/
function draw_background(dmg_per, ally, enemy, spr=sBack) {
	var s_per = dmg_per / 100;
	var e_per = 1 - s_per;

	var h = sprite_get_height(spr);
	var w = sprite_get_width(spr);

	var h_s_per = h * s_per;
	var h_e_per = h * e_per;

	// Draw ally 
	if (dmg_per < 100) {
		draw_sprite_part_ext(sBack, ally, 0, h_s_per, w, h_e_per, 0, h_s_per, 1, 1, c_white, 1);
	}

	// Draw enemy sprite half
	if (dmg_per > 0) {
		draw_sprite_part_ext(sBack, enemy, 0, 0, w, h_s_per, 0, 0, 1, 1, c_white, 1);

		// Draw enemy sprite fade
		var curr_y = h_s_per;

		var fade_section_height = 4;
		
		var f_amount = 0.05;

		repeat (20) {
			draw_sprite_part_ext(sBack, enemy, 0, curr_y, w, fade_section_height, 0, curr_y, 1, 1, c_white, 1 - f_amount);

			curr_y += fade_section_height;
			f_amount += 0.05;
			
		}
	}
}
