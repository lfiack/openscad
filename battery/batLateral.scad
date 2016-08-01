module internalSupportHole(distBottom,distTopSlot,woodWidth) {
	translate([0,0,-(distBottom-6-8)]) {
		cube([7,woodWidth+2,7],center=true);
	}
	translate([0,0,(distTopSlot-8)]) {
		cube([7,woodWidth+2,7],center=true);
	}
}

module batLateral(hBat,wBat,lBat) {
	$woodWidth=3;

	$spaceForConnectors=40;
	$spaceForFixation=20;
	$battFromBottom=6;

	$lPlate=lBat+$spaceForConnectors;
	$hPlate=hBat+$spaceForFixation;

	$distBottom=$hPlate/2;
	$distTopSlot=-$distBottom+$battFromBottom+hBat-wBat/2;

	difference() {
		cube([$lPlate,$woodWidth,$hPlate],center=true);
		translate([$lPlate/2-3,0,0]) {
			internalSupportHole($distBottom,$distTopSlot,$woodWidth);
		}
		translate([-($lPlate/2-3),0,0]) {
			internalSupportHole($distBottom,$distTopSlot,$woodWidth);
		}
//		translate([$lPlate/2-lBat+19,0,0]) {
		translate([0,0,0]) {
			internalSupportHole($distBottom,$distTopSlot,$woodWidth);
		}
	}
}
