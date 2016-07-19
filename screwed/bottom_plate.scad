/* Test */

//include <../utils/screw_slot.scad>

module bottom_plate(d,dWheel,lWheel) {
//	$dScrew=3;
//	$lScrew=18;
//	$wNut=2.6;
//	$lNut=5.7;
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

		// Screws and slots to attach the motor supports
		translate([90-3,0,0]) {
			cube([7,20,8],center=true);
			translate([0,15,0]) {
				cylinder(h=8,d1=3,d2=3,center=true);
			}
			translate([0,-15,0]) {
				cylinder(h=8,d1=3,d2=3,center=true);
			}
			translate([0,25,0]) {
				cube([7,10,8],center=true);
			}
			translate([0,-25,0]) {
				cube([7,10,8],center=true);
			}
		}
		translate([-(90-3),0,0]) {
			cube([7,20,8],center=true);
			translate([0,15,0]) {
				cylinder(h=8,d1=3,d2=3,center=true);
			}
			translate([0,-15,0]) {
				cylinder(h=8,d1=3,d2=3,center=true);
			}
			translate([0,25,0]) {
				cube([7,10,8],center=true);
			}
			translate([0,-25,0]) {
				cube([7,10,8],center=true);
			}
		}
		

//		// Slots for motor support
//		translate([-(90-3),15,0]) {
//			screw_slot($dScrew,$lScrew,6,10,$wNut,$lNut);
//		}
//		translate([-(90-3),-15,0]) {
//			screw_slot($dScrew,$lScrew,6,10,$wNut,$lNut);
//		}
//		rotate([0,0,180]) {
//			translate([-(90-3),15,0]) {
//				screw_slot($dScrew,$lScrew,6,10,$wNut,$lNut);
//			}
//			translate([-(90-3),-15,0]) {
//				screw_slot($dScrew,$lScrew,6,10,$wNut,$lNut);
//			}
//		}
	}
}

//projection(cut=false) {
//    bottom_plate(300,60,50);
//}
