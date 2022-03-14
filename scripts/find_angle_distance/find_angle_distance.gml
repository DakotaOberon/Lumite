// Find minimum distance between two angles
function find_angle_distance(a1, a2) {
    var diff = (a2 - a1 + 180 ) % 360 - 180;
    return diff < -180 ? diff + 360 : diff;
}
