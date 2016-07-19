include <../utils/screw_slot.scad>

module cheek_support(h) {
	$dScrew=3;
	$lScrew=18;
	$wNut=2.6;
	$lNut=5.7;

	difference() {
		cube([6,20,h],center=true);
		rotate([0,90,0]) {
			translate([-(h/2-3),5,0]) {
				screw_slot($dScrew,$lScrew,6,10,$wNut,$lNut);
			}
		}
		rotate([0,-90,0]) {
			translate([-(h/2-3),5,0]) {
				screw_slot($dScrew,$lScrew,6,10,$wNut,$lNut);
			}
		}

		rotate([90,0,90]) {
			translate([-14,(h/2-15),0]) {
				screw_slot($dScrew,14,6,10,$wNut,$lNut);
			}
			translate([-14,-(h/2-15),0]) {
				screw_slot($dScrew,14,6,10,$wNut,$lNut);
			}
		}
	}
}

//cheek_support(80);
