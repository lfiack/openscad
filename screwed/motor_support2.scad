module motor_support2() {
	difference() {
		// The plate itself
		cube([180,100,6], center=true);

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
	}
}

//motor_support2();
