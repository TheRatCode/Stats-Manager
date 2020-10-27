/// @function					instanceArraySize(array);
/// @param {optional} array		The array to count valid instances of
function instanceArraySize(array) {
	var size = 0;
	for (var i = 0; i < array_length_1d(array); i++) {
		if (array[i] != -1) {
			size++;
		}
	}
	
	return size;
}