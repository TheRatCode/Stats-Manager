/// @function					destroyInstanceArray(array);
/// @param {optional} array		The array to destroy
function destroyInstanceArray(array) {
	for (var i = 0; i < array_length_1d(array); i++) {
		var inst = array[i];
		
		if (inst != -1) {
			instance_destroy(inst);
			array[i] = -1;
		}
	}
	
	return array;
}