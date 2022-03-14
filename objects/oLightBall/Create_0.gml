// Starts on the opposite side
y = room_height - y;

dir = 180 + (180 * ((room_width - x) / room_width));

move_speed = 5;

spr_h = (bbox_bottom - bbox_top);
y_end = spr_h + room_height;

rot = 0;

depth = 50;

destroy_me = false;

dest_sub = 0;
dest_alpha = 1;
