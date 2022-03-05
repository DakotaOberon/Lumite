/**
* Get index of Collision in array
*
* @function		index_of_collision(arr, col)
* @param		{real}		arr				Array of Collisions
* @param		{real}		col				Collision to look for
* @return		{real}
*/
function index_of_collision(arr, col) {
	for (var i = 0; i < array_length(arr); i++) {
		if (arr[i] == col) {
			return i;
		}
	}
	
	return -1;
}
