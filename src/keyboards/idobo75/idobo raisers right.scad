
$fn=60;

inclination = 15;

// grouping for printing
difference() {
    // body
    cube([35, 115, 51], true);

    // top cutoff
    translate([0, 0, 27])
    rotate([inclination,0,0])
    cube([37, 150, 30], true);

    // inner cutoff
    translate([-8, -8, 17])
    cube([35, 107.5, 25], true);
    translate([-8, -28, 5])
    rotate([inclination,0,0])
    cube([35, 50, 25], true);

    // front cutoff
    translate([0, -80, -20])
    rotate([inclination,0,0])
    cube([37, 50, 25], true);

    // back cutoff
    translate([0, 80, 20])
    rotate([inclination,0,0])
    cube([37, 50, 25], true);

    // keyboard cutoff
    translate([-4.5, 0, 0])
    rotate([inclination,0,0])
    cube([35, 107.5, 15], true);
}
