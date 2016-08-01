include <batSupport.scad>
include <batBottom.scad>
include <batTop.scad>
include <batLateral.scad>
include <batLateralSmall.scad>

$hBat=45;
$wBat=23;
$lBat=130;

$battFromBottom=6;
$spaceForConnectors=40;
$spaceForFixation=10;
$spaceBetweenBatteries=10;

$distBottom=$battFromBottom+$hBat/2;
$distSide=$wBat+1.5*$spaceBetweenBatteries;
$lPlate=$lBat+$spaceForConnectors;
$hPlate=$hBat+$spaceForFixation+$battFromBottom;

batBottom($hBat,$wBat,$lBat);

translate([$lPlate/2-3,0,$distBottom+1.5]) {
	color([1,0,0])
	rotate([0,90,0]) {
		batSupport($hBat,$wBat);
	}
}

translate([-($lPlate/2-3),0,$distBottom+1.5]) {
	color([1,0,0])
	rotate([0,90,0]) {
		batSupport($hBat,$wBat);
	}
}

//translate([$lPlate/2-$lBat+19,0,$distBottom+1.5]) {
translate([0,0,$distBottom+1.5]) {
	color([1,0,0])
	rotate([0,90,0]) {
		batSupport($hBat,$wBat);
	}
}

translate([0,$distSide+1.5,$hPlate/2+1.5]) {
	color([0,1,0])
	batLateral($hBat,$wBat,$lBat);
}

translate([0,-($distSide+1.5),$hPlate/2+1.5]) {
	color([0,1,0])
	batLateral($hBat,$wBat,$lBat);
}

translate([$lPlate/2+1.5,0,$hPlate/2+1.5]) {
	color([0,0,1])
	batLateralSmall($hBat,$wBat);
}

translate([-($lPlate/2+1.5),0,$hPlate/2+1.5]) {
	color([0,0,1])
	batLateralSmall($hBat,$wBat);
}

translate([0,0,$hPlate+3]) {
	batTop($hBat,$wBat,$lBat);
}
