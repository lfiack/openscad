module screwHolesTop(distSide,spaceBetweenBatteries,woodWidth) {
	translate([0,distSide-spaceBetweenBatteries/2,0]) {
//		cube([7,7,woodWidth+2],center=true);
		cylinder(h=woodWidth+1,d1=3,d2=3,center=true);
	}
	translate([0,-(distSide-spaceBetweenBatteries/2),0]) {
//		cube([7,7,woodWidth+2],center=true);
		cylinder(h=woodWidth+1,d1=3,d2=3,center=true);
	}
}

module batTop (hBat,wBat,lBat) {
	$spaceBetweenBatteries=10;
	$spaceForConnectors=40;

	$wPlate=wBat*2+3*$spaceBetweenBatteries+6;
	$lPlate=lBat+$spaceForConnectors+6;

	$distSide=wBat+1.5*$spaceBetweenBatteries;

	$woodWidth=3;

	difference() {
		cube([$lPlate,$wPlate,$woodWidth],center=true);
		translate([$lPlate/2-6,0,0]) {
			screwHolesTop($distSide,$spaceBetweenBatteries,$woodWidth);
		}
		translate([-($lPlate/2-6),0,0]) {
			screwHolesTop($distSide,$spaceBetweenBatteries,$woodWidth);
		}
		translate([0,0,0]) {
			screwHolesTop($distSide,$spaceBetweenBatteries,$woodWidth);
		}
	}
}
