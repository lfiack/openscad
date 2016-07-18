module motor_support(h) {
	w=40;
	shift_motor=h/2-18;
	difference() {
		// Plate
		cube([6,w,h],center=true);
		// Hole for the motor shaft
		rotate([0,90,0]) {
			translate([shift_motor,0,-4]) {
				cylinder(h=8,d1=12.5,d2=12.5);
			}
		}
		// 6 Holes for the screws to attach the motor
		rotate([0,90,0]) {
			translate([shift_motor-7,0,0]) {
				for(i=[0:5]) {
					rotate([0,0,30+i*(360/6)]) {
						translate([31/2,0,-4]) {
							cylinder(h=8,d1=3,d2=3,$fn=16);
						}
					}
				}
			}
		}
		// 4 screws to attach it on the top and the bottom plates
		rotate([0,90,0]) {
			translate([h/2-3,-(w/2-5),-4]) {
				cylinder(h=8,d1=3,d2=3,$fn=16);
			}
			translate([h/2-3,w/2-5,-4]) {
				cylinder(h=8,d1=3,d2=3,$fn=16);
			}
			translate([-(h/2-3),-(w/2-5),-4]) {
				cylinder(h=8,d1=3,d2=3,$fn=16);
			}
			translate([-(h/2-3),w/2-5,-4]) {
				cylinder(h=8,d1=3,d2=3,$fn=16);
			}
		}
		// 2 cuttings top and bottom 
		translate([0,0,h/2-3]) {
			cube([8,w-20,7],center=true);
		}
		translate([0,0,-(h/2-3)]) {
			cube([8,w-20,7],center=true);
		}
	}
}

//motor_support(80);

//projection(cut=false) {
//    motor_support(300,60,20);
//}
