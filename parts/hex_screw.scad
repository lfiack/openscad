module hex_screw(d_head, l_head, d_screw, l_screw) {
	union() {
		translate([0,0,-l_head]) {
			cylinder(h=l_head, d1=d_head, d2=d_head);
		}

		cylinder(h=l_screw, d1=d_screw, d2=d_screw);
	}
}
