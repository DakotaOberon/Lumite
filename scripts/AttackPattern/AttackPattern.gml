/**
* Updates needed values of child object
* 
* @function		AttackPattern([type], [enemy], [length])
* @param		{real}		type			Attack pattern type
* @param		{real}		enemy			Enemy object to spawn
* @param		{real}		total			Total number to spawn
* @param		{real}		length			Length of attack pattern
* @return		self
*/
function AttackPattern(_type=AttackPatternType.l2r, _enemy=sNightMaggot, _total=1, _length=1) constructor {
	/**
		Enemy group, how to spawn, and length of group from start to end
	**/

	// Set default values
	type = _type;
	enemy = _enemy;
	total = _total;
	length = _length;
	spawns = {}
	step = 0;
	current_x = 32;
	total_steps = 0;

	// Initiate
	AttackPatternInit();

	run = AttackPatternRun;
	clean = AttackPatternClean;
}

function AttackPatternInit() {
	// Get value to add each check
	var group_section = self.total / self.length;

	// Set default last_spawn step
	var last_spawn = -1;

	// Loop over each frame to figure out which ones will spawn enemies
	for (var i = 0; i < self.length; i++) {
		// Get frame of next spawn
		var spawn = floor(group_section * i);
		
		// If the spawn number has gone up at least 1 whole number
		if (spawn > last_spawn) {
			// Get number of enemies to spawn at this step
			var numb = (spawn - last_spawn);
			
			// Set spawn value with frame_step : number_of_enemies
			variable_struct_set(self.spawns, i, numb);
			
			// Set last_spawn to new value
			last_spawn = spawn;
		}
	}

	// Get total number of spawn frames
	self.total_steps = variable_struct_names_count(self.spawns);

	return self;
}

// Returns false if it has reached the end of it's length
function AttackPatternRun() {
	// Check if enemies spawn at this step
	if (variable_struct_exists(self.spawns, step)) {
		// Default spawn values
		var buffer = 32;
		var rw = room_width - buffer;

		var y_spawn = 32 * global.attack_dir;
		if (global.attack_dir > 0) {
			y_spawn += room_height;
		}

		// Spawn based on spawn type
		switch(self.type) {
			case (AttackPatternType.l2r):
				// Get x spawn spread
				var spawn_spread = (rw - buffer) / self.total;

				// Spawn enemies for this frame at current_x
				log("Spawning", self.spawns[$ step], "enemies");
				for (var i = 0; i < self.spawns[$ step]; i++) {
					// Create enemy object at coords
					instance_create_layer(self.current_x, y_spawn, "Enemy", self.enemy);

					// Increment current_x by spawn_spread
					self.current_x += spawn_spread;
				}
			break;
		}
	}

	step += 1;

	return (step <= self.length);
}

function AttackPatternClean() {
	delete self.spawns;
}

enum AttackPatternType {
	l2r,
}
