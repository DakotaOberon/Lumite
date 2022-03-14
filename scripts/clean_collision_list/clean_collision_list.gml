/**
* Removes Collision structs for objects that no longer exist
* Return number of instances removed
*
* @function		check_in_collision(arr)
* @return		{real}
*/
function clean_collision_list(arr) {
	var removed = 0;

	for (var i = array_length(arr) - 1; i >= 0; i--) {
		if (!instance_exists(arr[i].object)) {
			removed += 1;

			array_delete(arr, i, 1);
		}
	}

	return removed;
}
