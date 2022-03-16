icon = UpIcon.dd;
name = "";

scale = 1;

fall_speed = 2;

can_be_grabbed = true;

group = -1;

delete_group = function () {
	var insts = instance_number(oUpgradeBubble);

	for (var i = 0; i < insts; i++) {
		var b = instance_find(oUpgradeBubble, i);
		if (instance_exists(b)) {

			if (b.id != id) {
				if (b.group = group) {
					instance_destroy(b.id);
				}
			}
		}
	}

	alarm[0] = 1;
}
