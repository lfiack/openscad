include <motor_support.scad>
include <bottom_plate.scad>
include <top_plate.scad>
include <../parts/pololu_37Dx52L.scad>

$d_robot = 300;
$h_robot = 80;

$d_wheel = 60;
$l_wheel = 20;

translate([0,0,3]) {
    bottom_plate($d_robot,$d_wheel,$l_wheel);
}

translate([$d_robot/2-$l_wheel-3-6,0,40]) {
    color([1,0,0])
    motor_support($h_robot);
}

translate([-($d_robot/2-$l_wheel-3-6),0,40]) {
    color([1,0,0])
    motor_support($h_robot);
}

translate([0,0,$h_robot-3]) {
    bottom_plate($d_robot);
}

translate([$d_robot/2-$l_wheel-6-6,0,25]) {
    pololu_37Dx52L();
}

rotate([0,0,180])
translate([$d_robot/2-$l_wheel-6-6,0,25]) {
    pololu_37Dx52L();
}
