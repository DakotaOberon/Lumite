function AttackSchedule() constructor {
	time_tracker = 0;
	patterns = { }

	last_key = "60";

	running_patterns = [];

	add = AttackScheduleAdd;
	step = AttackScheduleStep;
}

function AttackScheduleAdd(time, attack_pattern) {
	if (time * 60 > real(last_key)) {
		last_key = string(time * 60);
	}

	variable_struct_set(self.patterns, time * 60, attack_pattern);

	return self;
}

function AttackScheduleStep() {
	if (variable_struct_exists(self.patterns, self.time_tracker)) {
		// Get attack pattern
		var ap = variable_struct_get(self.patterns, self.time_tracker)
		array_push(self.running_patterns, ap);
	}

	AttackScheduleStepHelper(self.running_patterns);

	self.time_tracker += 1;

	if (self.time_tracker >= real(self.last_key)) {
		if (!global.can_spawn_boss) {
			global.can_spawn_boss = true;
		}
	}

	return self;
}

function AttackScheduleStepHelper(arr) {
	for (var i = array_length(arr) - 1; i > -1; i--) {
		if (is_struct(arr[i])) {
			if !(arr[i].run()) {
				// Remove pattern once finished
				arr[i].clean();
				array_delete(arr, i, 1);
			}
		} else if (is_array(arr[i])) {
			AttackScheduleStepHelper(arr[i]);
		}
	}

	return arr;
}
