include <../utils/screw_slot.scad>
include <battery.scad>

module batSupport(hBat,wBat) {
	$battFromBottom=6;
	$spaceBetweenBatteries=10;

	$distBottom=$battFromBottom+hBat/2;
	$distTop=-(hBat/2-wBat/2);
	$distSide=wBat+1.5*$spaceBetweenBatteries;

	$woodWidth=6;

	$dScrew=3;
	$lScrew=18;
	$wNut=2.6;
	$lNut=5.7;

	// Add the mounting brackets to the main plate
	union() {
		// Substracts the two battery slots and the screw slots from the main plate
		difference() {
			// The main plate
			translate([wBat/4+($battFromBottom/2),0,0]) {
				cube([hBat-wBat/2+$battFromBottom,wBat*2+3*$spaceBetweenBatteries,$woodWidth],center=true);
			}
			// Slot for battery 1
			translate([0,wBat/2+$spaceBetweenBatteries/2,0]) {
				#battery(hBat,wBat,$woodWidth+2);
			}
			// Slot for battery 2
			translate([0,-(wBat/2+$spaceBetweenBatteries/2),0]) {
				#battery(hBat,wBat,$woodWidth+2);
			}
			// 3 screw slots
			translate([-($woodWidth/2+0.5+hBat/2-wBat/2),0,0]) {
				// Central screw slot
				screw_slot($dScrew,$lScrew,$woodWidth,$spaceBetweenBatteries,$wNut,$lNut);
				// A lateral screw slot
				translate([0,wBat+$spaceBetweenBatteries,0]) {
					screw_slot($dScrew,$lScrew,$woodWidth,$spaceBetweenBatteries,$wNut,$lNut);
				}
				// An other lateral screw slot
				translate([0,-(wBat+$spaceBetweenBatteries),0]) {
					screw_slot($dScrew,$lScrew,$woodWidth,$spaceBetweenBatteries,$wNut,$lNut);
				}
			}
		}
		// Lateral/Bottom mounting bracket
		translate([$distBottom-3-8,wBat+1.5*$spaceBetweenBatteries+1.5,0]) {
			cube([6,3,$woodWidth],center=true);
		}
		// Lateral/Top mounting bracket
		translate([$distTop+3+8,wBat+1.5*$spaceBetweenBatteries+1.5,0]) {
			cube([6,3,$woodWidth],center=true);
		}
		// Lateral/Bottom mounting bracket
		translate([$distBottom-3-8,-(wBat+1.5*$spaceBetweenBatteries+1.5),0]) {
			cube([6,3,$woodWidth],center=true);
		}
		// Lateral/Top mounting bracket
		translate([$distTop+3+8,-(wBat+1.5*$spaceBetweenBatteries+1.5),0]) {
			cube([6,3,$woodWidth],center=true);
		}
		// Bottom/Center mounting bracket
		translate([$distBottom+1.5,0,0]) {
			cube([3,6,$woodWidth],center=true);
		}
		// A Bottom/Lateral mounting bracket
		translate([$distBottom+1.5,$distSide-3-8,0]) {
			cube([3,6,$woodWidth],center=true);
		}
		// The other Bottom/Lateral mounting bracket
		translate([$distBottom+1.5,-($distSide-3-8),0]) {
			cube([3,6,$woodWidth],center=true);
		}
	}
}

//projection(cut=false) {
//	batSupport(45,23);
//}
