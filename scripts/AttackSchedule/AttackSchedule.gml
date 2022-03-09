function AttackSchedule() constructor {
	time_tracker = 0;
	patterns = { }

	running_patterns = [];

	add = AttackScheduleAdd;
	step = AttackScheduleStep;
}

function AttackScheduleAdd(time, attack_pattern) {
	variable_struct_set(self.patterns, time, attack_pattern);

	return self;
}

function AttackScheduleStep() {
	if (variable_struct_exists(self.patterns, self.time_tracker)) {
		// Get attack pattern
		var ap = variable_struct_get(self.patterns, self.time_tracker)
		array_push(self.running_patterns, ap);
	}

	// Go reverse to delete the ones that are done while running
	for (var i = array_length(self.running_patterns) - 1; i > -1; i--) {
		if !(self.running_patterns[i].run()) {
			// Remove pattern once finished
			self.running_patterns[i].clean();
			array_delete(self.running_patterns, i, 1);
		}
	}

	self.time_tracker += 1;

	return self;
}
