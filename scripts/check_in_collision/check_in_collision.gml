/**
* Check if object is in collision, if it is, return Collision struct
*
* @function		check_in_collision(arr, obj)
* @param		{array}		arr				Collision array
* @param		{real}		obj				Object to look for
* @return		{Collision}
*/
function check_in_collision(arr, obj) {
	for (var i = 0; i < array_length(arr); i++) {
		if (arr[i].object == obj) {
			log("Found collision");
			return arr[i];
		}
	}

	return noone;
}
