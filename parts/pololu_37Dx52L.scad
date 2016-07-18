module pololu_37Dx52L() {
	$l_gear = 22;
	$d_gear = 36.8;
	$l_motor = 30.7;
	$d_motor = 34.8;
	$l_coder = 15.4;
	$d_coder = 34.8;
	$l_thing = 6.5;
	$d_thing = 12;
	$l_shaft = 22-$l_thing;
	$d_shaft = 6;

	rotate([90,180,-90]){
		difference() {
			translate([0,0,0]) {
				color([1,0,0])
					cylinder(h=$l_gear,d1=$d_gear,d2=$d_gear);
			}
			for(i=[0:5]) {
				rotate([0,0,i*(360/6)]) {
					translate([31/2,0,-1]) {
						cylinder(h=4,d1=3,d2=3,$fn=16);
					}
				}
			}
		}
		translate([0,0,$l_gear]) {
			color([0,1,0])
				cylinder(h=$l_motor,d1=$d_motor,d2=$d_motor);
		}
		translate([0,0,$l_gear+$l_motor]) {
			color([0,0,1])
				cylinder(h=$l_coder,d1=$d_coder,d2=$d_coder);
		}
		translate([0,7,-$l_thing]) {
			color([0,0,1])
				cylinder(h=$l_thing,d1=$d_thing,d2=$d_thing);
		}
		translate([0,7,-($l_thing+$l_shaft)]) {
			color([0,1,0])
				cylinder(h=$l_shaft,d1=$d_shaft,d2=$d_shaft);
		}
	}
}

//pololu_37Dx52L();
