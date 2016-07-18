/* Test */

module top_plate(d) {
	difference() {
		// The plate itself
		intersection() {
			cube([d,d,6], center=true);
			rotate([0,0,45]) cube([d,d,6], center=true);
		}
	}
}

//projection(cut=false) {
//    top_plate(300,60,20);
//}
