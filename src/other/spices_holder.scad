

/**
 * Spice Jar Width: 45 mm
 * Spice Jar Height: 100 mm
 */


$fn=60;



// Spice Jar
for (p = [0:90:360]) {
    rotate([0,0,p]) translate([50,0,0]) cube([45, 45, 100], true);
}

cylinder(r=90,h=10);

