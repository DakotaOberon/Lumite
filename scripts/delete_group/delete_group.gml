function delete_group(grp) {
	var insts = instance_number(oUpgradeBubble);

	for (var i = 0; i < insts; i++) {
		var b = instance_find(oUpgradeBubble, i);
		if (instance_exists(b)) {
			if (b.group = grp) {
				instance_destroy(b.id);
			}
		}
	}
}
