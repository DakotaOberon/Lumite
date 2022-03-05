/// @description Reset shield bouncing
if (!place_meeting(x, y, oPlayer)) {
	can_bounce_on_shield = true;
} else {
	alarm[2] = 2;
}
