
// Define higher resolution for transformations
$fn=60;

difference() {
union(){
    // sides
    color("#FFA500")
    difference() {
        translate([0,0,1.5])  sideroundedcube(18, 8, 2);
        translate([0,0,1.49]) sideroundedcube(15, 10, 1);
    }
    // top ceiling
    color("#FF8C00")
    translate([0,0,7.25]) sideroundedcube(15, 2, 1);

    // fitting support
    color("#FF7F50")
    translate([0, 0, 4.75])
    difference(){
        // housing fitting
        hull() {
            translate([2.50, 1.68, 0])   cylinder(6.5, 1, 1, true);
            translate([-2.50, 1.68, 0])  cylinder(6.5, 1, 1, true);
            translate([2.50, -1.68, 0])  cylinder(6.5, 1, 1, true);
            translate([-2.50, -1.68, 0]) cylinder(6.5, 1, 1, true);
        }
        // cross fitting cutoff
        cube([4.5, 1.29, 10], true);
        cube([1.15, 4.5, 10], true);
    }
}

    *color("#666666")
    translate([-7,0, 9])
    linear_extrude(1)
    text("A", font="Courier New", size=8);

// enable to see sliced
*translate([0, 5, 5]) cube([20, 10, 20], true);
}

// reference inner cupola cutoff
*translate([10,10,1.49])
sideroundedcube(16, 6, 2);

// height reference, with z offset for switch spacing
*translate([0,0,1.5])
cube([18, 18, 8]); // height = 8mm


/**
 * Reference fitting cross
 * The fitting cross on the kailh speed has been measured to be:
 * - horizontal : 1.27 to 1.29 thick, 3.95 in length, and 3.65 in height
 * - vertical   : 1.11 to 1.15 think, 3.95 in length, and 3.65 in height
 */
*union(){
    cube([3.95, 1.29, 3.66], true); // h
    cube([1.15, 3.94, 3.66], true); // v
 }

/**
 * Reference piston housing
 * The piston housing on the kailh speed has been measured to be:
 * - x : 7.47
 * - y : 5.81
 * - z : 3.65
 */
*cube([7.45, 5.8, 3.65], true);


module roundedcube(s, h, r) {
    minkowski() {
        cube([s-r*2, s-r*2, h-r*2], true);
        sphere(r);
    };
}

module sideroundedcube(s, h, r) {
    linear_extrude(height=h)
    minkowski() {
        square(s-r*2, true);
        circle(r);
    };
}

