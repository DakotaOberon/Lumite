/**
* Runs sigma notation
*
* @function		sigma(start, end, iteration)
* @param		{real}		start			Start value to begin adding from
* @param		{real}		end				End value to end at
* @param		{real}		iteration		Amount to add each loop
* @return		{real}
*/
function sigma(start, _end, iter) {
	var lastI = ceil((_end - start) / iter);
	var result = start;
	for(var i = 0; i <= lastI; i++) {
		result += (i * iter);
	}

	return result;
}
