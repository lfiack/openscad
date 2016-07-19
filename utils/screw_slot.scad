module screw_slot(dScrew, lScrew, wPlate,lSlot,wNut,lNut) {
	shiftScrew=lScrew/2-wPlate/2;
	shiftNut=lScrew/2;
	union() {
		cube([wPlate+1,lSlot+1,wPlate+1], center=true);
		translate([shiftScrew,0,0]) {
			cube([lScrew,dScrew,wPlate+1],center=true);
		}
		translate([shiftNut,0,0]) {
			cube([wNut,lNut,wPlate+1],center=true);
		}
	}
}

//screw_slot(3,18,6,10,2.4,5.5);
