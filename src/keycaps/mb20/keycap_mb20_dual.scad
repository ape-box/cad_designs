
// Define higher resolution for transformations
$fn=60;

difference() {
union(){
    // keycap outside cupola
    difference() {
        union() {
            // Top bezel is 2mm but should be 1mm, let's see how it prints first
            // rounded cap - top half
            translate([0,0,7.5]) // half mil under ten
            minkowski() {
                cube([37-2*2, 18-2*2, 6-2*2], true);
                sphere(2);
            };

            // rounded sides - bottom half
            translate([0,0,1.5])
            linear_extrude(height=5)
            minkowski() {
                square([37-2*2, 18-2*2], true);
                circle(2);
            };
        };

        // top flattening
        translate([0,0,9.49])
        sideroundedcube(38, 6, 2);

        // internal cupola cutoff
        translate([0,0,1.49])
        linear_extrude(height=6)
        minkowski() {
            square([34-2*2, 15-2*2], true);
            circle(2);
        };
    }

    // fitting support
    translate([-9.5, 0, 4.75])
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

    // fitting support
    translate([9.5, 0, 4.75])
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
*translate([0, 10, 0]) cube([40, 20, 20], true);
}


module sideroundedcube(s, h, r) {
    linear_extrude(height=h)
    minkowski() {
        square(s-r*2, true);
        circle(r);
    };
}

