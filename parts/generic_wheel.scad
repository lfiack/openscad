module generic_wheel(d_wheel, d_shaft, width) {
	rotate([90,180,-90]){
		difference() {
			cylinder(h=width, d1=d_wheel, d2=d_wheel);
			cylinder(h=width, d1=d_shaft, d2=d_shaft);
		}
	}
}
