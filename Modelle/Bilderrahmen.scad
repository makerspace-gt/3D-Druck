preview = 0.01;
$fn = 100;

// innere Maße
breite = 121.0;
hoehe = 69.0;
tiefe = 20.0;
dicke = 2.0;
lochDia = 4.2;
lochAbstand = 4.0;

difference() {
    // aussen
    cube([breite+2*dicke, hoehe+2*dicke, tiefe+2*dicke]);
    // innen
    translate([dicke, dicke, -preview]) {
        cube([breite, hoehe, tiefe+dicke]); 
    }
    // oben
    translate([dicke*2, dicke*2, tiefe-preview]) {
        cube([breite-2*dicke, hoehe-2*dicke, dicke*2+2*preview]);
    }
    // kabel aussparung
    translate([breite+dicke-preview, dicke+lochAbstand, -preview+dicke+lochDia]){
        rotate([0, 90, 0])
        hull(){
            cylinder(d=lochDia, h=dicke+2*preview);
            translate([dicke+lochDia, 0, 0])
                cylinder(d=lochDia, h=dicke+2*preview);
        }
    }
}
// 3mm nubsel abstand
nubselBreite = 20;
nublselAbstand = 10;
translate([dicke+nublselAbstand, dicke, 3]) nubsel();
translate([breite+dicke-nubselBreite-nublselAbstand, dicke, 3]) nubsel();
rotate([0, 0, 180]) {
    translate([-dicke-nubselBreite-nublselAbstand, -hoehe-dicke, 3]) nubsel();
    translate([-dicke-breite+nublselAbstand, -hoehe-dicke, 3]) nubsel();
}

module nubsel() {
    // hilfe für polyhedron
    CubePoints = [  [  0,  0,  0 ],  //0
                    [ 20,  0,  0 ],  //1
                    [ 20,  4,  0 ],  //2
                    [  0,  4,  0 ],  //3
                    [  0,  0,  4 ],  //4
                    [ 20,  0,  4 ],  //5
                    [ 20,  0,  4 ],  //6
                    [  0,  0,  4 ]]; //7

  CubeFaces = [ [0, 1, 2, 3],  // bottom
                [4, 5, 1, 0],  // front
                [7, 6, 5, 4],  // top
                [5, 6, 2, 1],  // right
                [6, 7, 3, 2],  // back
                [7, 4, 0, 3]]; // left

  polyhedron(CubePoints, CubeFaces);
}