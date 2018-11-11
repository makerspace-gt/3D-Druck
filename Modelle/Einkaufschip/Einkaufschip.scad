text="Name";

$fn=100;

scale=23.2/79;

h=2.4;

D1=79*scale;
D2=64*scale;
D3=47*scale;
D4=43.5*scale;
D5=37.5*scale;

H1=27*scale;
H2=23*scale;

size=H2-1.6;
//size=H2-2.4;

B=87*scale;

Z1=7*scale;
Z2=10*scale;

union(){
  //white
  cylinder(d=D1, h=h/2);

  //black
  translate([0,0,h*3/4])
  intersection(){
    cylinder(d=D1, h=h/2, center=true);
    difference(){
      union(){
        //bows
        difference(){
          cylinder(d=D4, h=h/2, center=true);
          cylinder(d=D5, h=h/2, center=true);
        }
        
        //gear
        difference(){
          cylinder(d=D2, h=h/2, center=true);
          cylinder(d=D3, h=h/2, center=true);
        }
        
        //tooth
        for(i = [0:30:360]){
          rotate([0,0,i])
          linear_extrude(height=h/2, center=true)
            polygon(points=[[D2/2*0.95,Z2/2], [D2/2*0.95,-Z2/2], [D1/2,-Z1/2], [D1/2,Z1/2]]);
        }   
      }
      cube([B,H1,h/2], center=true);
    }
  }

  //red
  translate([0,0,h*3/4])
  difference(){
    intersection(){
      cylinder(d=D1, h=h/2, center=true);
      cube([B,H2,h/2], center=true);
    }
    linear_extrude(height=h/2, center=true)
      text(
        text, 
        size=size, 
        halign="center", 
        valign="center", 
        font="Liberation Sans:style=bold", 
        spacing=1.2
      );
  }
}
