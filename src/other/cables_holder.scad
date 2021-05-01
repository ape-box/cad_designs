

/**
 * Cable >= 7mm
 * Casing >= 14mm
 * Desk = 35mm
 */


$fn=60;

difference() {
    sphere(r=50);
    translate([ 30, 20, -20])  cable(4);
    translate([ 10, 20, -20])  cable(4);
    translate([-10, 20, -20]) cable(4);
    translate([-30, 20, -20]) cable(4);
    translate([0,-40,0]) cube([200, 100, 35], true);
}


module cable(cable_radius) {
    union() {
        hull() {
            translate([cable_radius,cable_radius/1,90])  sphere(r=cable_radius);
            translate([cable_radius,-cable_radius/1,90])  sphere(r=cable_radius);
            translate([-cable_radius,cable_radius/1,90]) sphere(r=cable_radius);
            translate([-cable_radius,-cable_radius/1,90]) sphere(r=cable_radius);
            translate([cable_radius*1.1,0,50])  sphere(r=cable_radius);
            translate([-cable_radius*1.1,0,50]) sphere(r=cable_radius);
            translate([0,0,40])             cylinder(r=cable_radius, h=10);
        }
        hull() {
            translate([0,0,-50]) cylinder(r=cable_radius, h=125);
            translate([0,50,-50]) cylinder(r=cable_radius, h=125);
            sphere(r=cable_radius);
        }
    }
}