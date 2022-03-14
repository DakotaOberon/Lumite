function level_up_action(level) {
	var ups = find_lowest_level_upgrades(global.projectile);
	var x_start = 64;
	var x_spread = ((room_width ) / 3);

	for (var i = 0; i < array_length(ups); i++) {
		var bub = instance_create_layer(x_start + (i * x_spread), 0, "Player", oUpgradeBubble);
		bub.icon = ups[i].icon;
		bub.name = ups[i].name;
		bub.group = level;
	}

	delete ups;
}

function find_lowest_level_upgrades(P) {
	var arr = [];

	var keys = variable_struct_get_names(P.upgrades);
	
	var filler_up = P.upgrades[$ keys[0]];

	for (var i = 0; i < array_length(keys); i++) {
		var up = variable_struct_get(P.upgrades, keys[i]);

		if (array_length(arr) < 3) {
			array_push(arr, up);
		} else {
			for (var j = 0; j < array_length(arr); j++) {
				if (arr[j].level > up.level) {
					arr[j] = up;
					filler_up = up;
					break;
				}
			}
		}
	}

	while (array_length(arr) < 3) {
		array_push(arr, filler_up);
	}

	return arr;
}
