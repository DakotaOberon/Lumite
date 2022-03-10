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
			as.add(real(keys[i]), load_helper(ap_struct));

			delete ap_struct;
		}

		delete data;
	}

	return as;
}

function load_helper(item) {
	if (is_struct(item)) {
		var enemy = asset_get_index(item[$ "enemy"]);
		var type = item[$ "type"];

		if (is_string(type)) {
			switch (type) {
				case "l2r":
					type = AttackPatternType.l2r;
				break;
				case "r2l":
					type = AttackPatternType.r2l;
				break;
				case "c2l":
					type = AttackPatternType.c2l;
				break;
				case "c2r":
					type = AttackPatternType.c2r;
				break;
			}
		}

		var ret = new AttackPattern(
			real(item[$ "type"]),
			enemy,
			real(item[$ "total"]),
			real(item[$ "length"])
		)
	} else if (is_array(item)) {
		var ret = [];

		for (var i = 0; i < array_length(item); i++) {
			array_push(ret, load_helper(item[i]));
		}
	}

	return ret;
}
