preview = 0.01;
$fn=100;
print = 1; // 0 = alles, 1 = motorhalter, 2 = boden Halterung

if (print == 1 || print == 0){
    motorhalter();
} 
if (print == 2 || print == 0) {
    bodenhalter();
}
    width=30;

module motorhalter(){
    // Bodenplatte
    color("blue")
    translate([-width/2, 0, 0]) {
        translate([width/2-6, 0, 0])
            cube([12, 10, 3]);

        // Frontplatte
        translate([0, -3, 0]) {
            difference() {
                cube([width, 3, 20]);
                // Schrauben für die Motor Fixierung
                for (i =[-1:2:1]) {
                    // Schraube
                    translate([width/2+4.75*i, -preview, 3+5])
                        rotate([-90, 0, 0]) cylinder(d=1.5, h=3+2*preview);
                    // Versenken
                    translate([width/2+4.75*i, -preview, 3+5])
                        rotate([-90, 0, 0]) cylinder(d=3, h=2);
                    // Loch für Schraubbefestigung
                    translate([width/2+11*i, -preview, 3+5])
                        rotate([-90,0,0]) cylinder(d=3.5, h=3+2*preview);
                    // Versenkte Mutter für Schraubbefestigung
                    translate([width/2+11*i, 1.5, 3+5])
                        rotate([-90,30,0]) cylinder(d=6.3, h=3+2*preview, $fn=6);
                }
                // Loch für Welle
                translate([width/2, -preview, 3+5])
                    rotate([-90,0,0]) cylinder(d=4, h=3+2*preview);
            }
        }
    }
}

module bodenhalter() {
    w = width + 8;
    union() {
        translate([-w/2,-6,-6]){
            // mounting plate
            difference() {
                cube([w, 3, 30]);
                translate([w/2-1.75,0,0])
                    for (i =[-1:2:1]) {
                        translate([11*i,-preview, 6])
                           cube([3.5, 3+2*preview, 18]);
                    }
                // Loch für Welle
                translate([w/2-2,-preview,6]) {
                    cube([4, 3+2*preview, 18]);
                }
            }
        }
        translate([-w/2, -6, -9]){
            cube([w, 50, 3]);
        }
    }
}