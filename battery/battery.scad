module battery (h,w,l) {
	union () {
		translate([h/2-w/2,0]) {
			cylinder(h=l,d1=w,d2=w,center=true);
		}
		translate([-(h/2-w/2),0]) {
			cylinder(h=l,d1=w,d2=w,center=true);

		}
		cube([h-w,w,l],center=true);
	}
}
