/* Test */

module bottom_plate(d,dWheel,lWheel) {
	difference() {
		// The plate itself
		intersection() {
			cube([d,d,6], center=true);
			rotate([0,0,45]) cube([d,d,6], center=true);
		}

		// Holes for wheels
		translate([90+lWheel/2,0,0]) {
			cube([lWheel,dWheel,10], center=true);
		}
		translate([-90-lWheel/2,0,0]) {
			cube([lWheel,dWheel,10], center=true);
		}
	}
}

//projection(cut=false) {
//    bottom_plate(300,60,20);
//}
