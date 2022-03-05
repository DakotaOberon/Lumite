var l, r;
l = keyboard_check(ord("A"));
r = keyboard_check(ord("D"));

var launch_left, launch_center, launch_right;
launch_left = keyboard_check_pressed(ord("Q"));
launch_center = keyboard_check_pressed(ord("W"));
launch_right = keyboard_check_pressed(ord("E"));

// Get launch direction
var middle = (room_width / 2);
var dis_from_center = (x - middle);
var max_dis_from_center = abs(((bbox_right - bbox_left) / 2) - middle);

var percent_of_max_dis = dis_from_center / max_dis_from_center;

draw_left_launch_angle = 135 + (max_dir * percent_of_max_dis);
draw_right_launch_angle = 45 + (max_dir * percent_of_max_dis);

if (launch_center) {
	launch_dir = 90;
} else if (launch_left) {
	launch_dir = draw_left_launch_angle;
} else if (launch_right) {
	launch_dir = draw_right_launch_angle;
}

var launch = launch_left || launch_center || launch_right;

if (launch) {
	global.projectile.create(x, y, launch_dir);
}

x += (global.player.move_speed * (r - l));
