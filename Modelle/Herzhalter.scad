$fn=100;
preview=0.01;

color("red")
difference() {
    cylinder(d=27, 7);

    translate([0,0,-preview])
        cylinder(d=24.5, h=3);
    
    cylinder(d=15, h=5);

    translate([0,0,-preview])
        cube([1.2, 27/2, 7+2*preview]);
}