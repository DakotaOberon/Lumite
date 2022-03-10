/**
	Get index of item in array
**/
function array_find(arr, item) {
	for (var i = 0; i < array_length(arr); i++) {
		if (arr[i] == item) {
			return i;
		}
	}

	return -1;
}
