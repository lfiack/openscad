module internalSupportHoleBottom(distSide, woodWidth) {
	cube([7,7,$woodWidth+2],center=true);
	translate([0,distSide-3-8,0]) {
		cube([7,7,woodWidth+2],center=true);
	}
	translate([0,-(distSide-3-8),0]) {
		cube([7,7,woodWidth+2],center=true);
	}
}

module batBottom (hBat,wBat,lBat) {
	$spaceBetweenBatteries=10;
	$spaceForConnectors=40;

	$wPlate=wBat*2+3*$spaceBetweenBatteries+6;
	$lPlate=lBat+$spaceForConnectors+6;

	$distSide=wBat+1.5*$spaceBetweenBatteries;

	$woodWidth=3;

	difference() {
		cube([$lPlate,$wPlate,$woodWidth],center=true);
		translate([$lPlate/2-6,0,0]) {
			internalSupportHoleBottom($distSide,$woodWidth);
		}
		translate([-($lPlate/2-6),0,0]) {
			internalSupportHoleBottom($distSide,$woodWidth);
		}
//		translate([$lPlate/2-lBat+19,0,0]) {
		translate([0,0,0]) {
			internalSupportHoleBottom($distSide,$woodWidth);
		}
		translate([-($lPlate/2-15-10),0,0]) {
			// TODO Au Pif!
			cube([30,30,$woodWidth+2],true);
		}
	}
}

//batBottom(45,23,130);
