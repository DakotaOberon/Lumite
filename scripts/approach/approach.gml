/**
* Gets a value from {origin} to {goal} moved by {amount}
*
* @function		approach(origin, goal, amount)
* @param		{real}		origin			Starting value
* @param		{real}		goal			End goal value
* @param		{real}		amount			Amount to move value by
* @return		{real}
*/
function approach(origin, goal, amount) {
	if (origin < goal) {
		return min(origin + amount, goal);
	}

	return max(origin - amount, goal);
}
