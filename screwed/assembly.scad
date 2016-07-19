include <motor_support.scad>
include <motor_support2.scad>
include <bottom_plate.scad>
include <top_plate.scad>
include <cheek_support.scad>
include <../parts/pololu_37Dx52L.scad>
include <../parts/generic_wheel.scad>

$d_robot = 300;
$h_robot = 80;

$d_wheel = 60;
$l_wheel = 30;

$l_screw = 16;

translate([0,0,3]) {
    bottom_plate($d_robot,$d_wheel,$l_wheel);
}

translate([90-3,0,52/2]) {
    color([1,0,1])
    motor_support(52);
}

translate([-(90-3),0,52/2]) {
    color([1,0,1])
    motor_support(52);
}

translate([0,0,52-3]) {
	color([1,1,0])
	motor_support2();
}

//translate([0,0,$h_robot-3]) {
//	color([1,1,0])
//    top_plate($d_robot);
//}

translate([90-6,0,25]) {
    pololu_37Dx52L();
}

rotate([0,0,180])
translate([90-6,0,25]) {
    pololu_37Dx52L();
}

//rotate([0,0,180])
//translate([$d_robot/2-$l_wheel+10,0,18]) {
//    color([0,0,1])
//    generic_wheel(d_wheel=60, d_shaft=6, width=10);
//}
//
//translate([$d_robot/2-$l_wheel+10,0,18]) {
//    color([0,0,1])
//    generic_wheel(d_wheel=60, d_shaft=6, width=10);
//}

for (i = [0:7]) {
    rotate([0,0,45*i]) {
    translate([$d_robot/2-10, 50, $h_robot/2]) {
        color([0,i/8,1-i/8])
		rotate([0,0,90]) {
        	cheek_support($h_robot);
		}
    }
    translate([$d_robot/2-10, -50, $h_robot/2]) {
        color([i/8,0,1-i/8])
		rotate([0,0,90]) {
        	cheek_support($h_robot);
		}
    }
}
}
