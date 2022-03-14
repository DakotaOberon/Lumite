// Fix dir
dir = fix_direction(dir);

//var max_dir_range = (180 - max_dir);

//var target_dir = dir;

//if (dir > max_dir && dir < max_dir + (max_dir_range * 2)) {
//	// If dir is within bad dir range left
//	if (dir < max_dir - max_dir_range) {
//		target_dir = max_dir;
//	} else {
//		target_dir = max_dir + (max_dir_range * 2);
//	}
//} else if (dir < min_dir || dir > (360 - min_dir)) {
//	// If dir is within bad dir range right
//	if (dir < min_dir) {
//		target_dir = min_dir;
//	} else {
//		target_dir = (360 - min_dir);
//	}
//}

//dir = approach(dir, target_dir, 2);

for (var i = 0; i < array_length(P.passives); i++) {
	P.passives[i](P, self);
}
