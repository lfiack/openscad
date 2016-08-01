module batLateralSmall(hBat,wBat) {
	$woodWidth=3;

	$spaceForFixation=10;
	$battFromBottom=6;
	$spaceBetweenBatteries=10;

	$lPlate=wBat*2+3*$spaceBetweenBatteries+6;
	$hPlate=hBat+$spaceForFixation+$battFromBottom;

	$distBottom=$hPlate/2;
	$distTopSlot=-$distBottom+$battFromBottom+hBat-wBat/2;

	cube([$woodWidth,$lPlate,$hPlate],center=true);
}
