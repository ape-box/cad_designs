
// Define higher resolution for transformations
$fn=60;

difference() {
union(){
    // keycap outside cupola
    difference() {
        union() {
            // rounded cap - top half
            translate([0,0, 7.5]) // half mil under ten
            roundedcube(18, 6, 2);

            // rounded sides - bottom half
            translate([0,0,1.5])
            sideroundedcube(18, 5, 2);
        };

        // top flattening
        translate([0,0,9.49])
        sideroundedcube(18, 6, 2);

        // internal cupola cutoff
        translate([0,0,1.49])
        sideroundedcube(15, 6, 2);
    }

    // fitting support
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
#union(){
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
#cube([7.45, 5.8, 3.65], true);


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

