$fn=100;
preview = 0.01;

difference() {
    union() {
        cylinder(d1=16, d2=13, h=2);
        translate([0, 0, 2])
            cylinder(d=13, h=0.5);
        translate([0, 0, 2.5])
            cylinder(d=10, h=4.5);
    }

    translate([0, 0, -preview])
        cylinder(d=8, h=7+2*preview);
}