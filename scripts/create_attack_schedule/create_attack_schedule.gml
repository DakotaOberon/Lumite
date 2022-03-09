function create_attack_schedule(gamemode=gm_light) {
	var as = new AttackSchedule();
	switch (gamemode) {
		case (gm_light):
			as.add(
				0,
				new AttackPattern(AttackPatternType.l2r, oNightMaggot, 100, 60)
			)
			as.add(
				360,
				new AttackPattern(AttackPatternType.l2r, oNightMaggot, 15, 1200)
			)
		break;
		case (gm_night):
			for (var i = 0; i < 100; i++) {
				as.add(
					i * 60,
					new AttackPattern(AttackPatternType.l2r, oNightMaggot, 100, 60)
				)
			}
		break;
	}

	return as;
}

function load_attack_from_file(filename) {
	// Load data from file
	var full_name = filename + ".json";
	var file_id = file_text_open_read(full_name);
	
	// Set defaults
	var json_string = "";
	var data = noone;

	// If file found
	if (file_id >= 0) {
		while(!file_text_eof(file_id)) {
			json_string += file_text_readln(file_id);
		}
		file_text_close(file_id);
		data = json_parse(json_string)
	}

	var as = new AttackSchedule();

	if (data) {
		var keys = variable_struct_get_names(data);
		for (var i = 0; i < array_length(keys); i++) {
			var ap_struct = variable_struct_get(data, keys[i]);
			// Load attack pattern
			var enemy = asset_get_index(ap_struct[$ "enemy"]);
			if (enemy >= 0) {
				var ap = new AttackPattern(
					real(ap_struct[$ "type"]),
					enemy,
					real(ap_struct[$ "total"]),
					real(ap_struct[$ "length"])
				)

				// Add to attack schedule
				as.add(real(keys[i]), ap);
			}

			delete ap_struct;
		}

		delete data;
	}

	return as;
}
