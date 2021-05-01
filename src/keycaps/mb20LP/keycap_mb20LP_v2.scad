
// Define higher resolution for transformations

$fn=60;

union() {
    // sides
    color("#FFA500")
    linear_extrude(height = 8, scale=0.90)
    difference() {
        offset(r=1) square(16, true);
        offset(r=1) square(14, true);
    }

    // top ceiling
    color("#FF8C00")
    translate([0,0,5.5])
        linear_extrude(height = 2.25)
        offset(r=1)
        square(13, true);

    // fitting support
    color("#FF7F50")
    translate([0, 0, 3.25])
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