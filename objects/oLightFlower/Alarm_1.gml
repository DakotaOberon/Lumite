var e_r = in_side? empower_range * 2 : empower_range;

effect_create_above(ef_cloud, x, y, 1, c_yellow);

ds_list_clear(empower_list);
collision_circle_list(x, y, e_r, oEnemy, 0, 1, empower_list, 0);
for (var i = 0; i < ds_list_size(empower_list); i++) {
	var emp = ds_list_find_value(empower_list, i);
	if (emp.hp < emp.max_hp) {
		emp.hp += 1;
	}
}

alarm[1] = 180;
