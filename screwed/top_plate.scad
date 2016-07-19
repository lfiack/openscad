/* Test */

module top_plate(d) {
	difference() {
		// The plate itself
		intersection() {
			cube([d,d,6], center=true);
			rotate([0,0,45]) cube([d,d,6], center=true);
		}
		intersection() {
			cube([d-40,d-40,8], center=true);
			rotate([0,0,45]) cube([d-40,d-40,8], center=true);
		}
	}
}

//projection(cut=false) {
//    top_plate(300,60,20);
//}
