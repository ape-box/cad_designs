

/**
 * Width  = 1650mm
 * Height = 2250mm
 * Depth  =  550mm
 *
 * |-----------------------------------------------------------------|
 * |^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^|
 * | Question: should I reinforce the base in contact with the skirt |
 * | by layering boards or should I reduce the size to simplify      |
 * | the design and avoid the skirts entirely ?                      |
 * |_________________________________________________________________|
 * |=================================================================|
 *
 * Build instructions:
 * - Note the reinforced feet to allow cutoff for the room skirts
 * - Consider cutting short the central pillar to allow max usage
 *   of top space
 *
 * Assembly instructions:
 * - Wrap the feets to protect the woods, this thing is heavy
 * - Put padding on the ground, like a carpet or maybe hardboard
 *   to help absorb the compression
 * - Use saw horse and workbenches to screw in the shelves supports
 * - Assemble in order
 *  0. Vertial structure
 *  1. Lateral truss
 *  2. Shelves positioning
 *  3. Shelves support - more or less here it should be finished or painted
 *  4. Put in place
 */

$fn=60;

// Vertical Structure
// Joined with self aligning joint:
// - see https://www.youtube.com/watch?v=R1ZirrwzNtk&list=LL
translate([0,         0,         0]) cube([63, 38, 2200], false);
translate([0,         38,        0]) cube([38, 63, 2200], false);
translate([0,         550-38,    0]) cube([63, 38, 2200], false);
translate([0,         550-63-38, 0]) cube([38, 63, 2200], false);
translate([550-63/2,  0,         0]) cube([63, 38, 2200], false);
translate([550-38/2,  38,        0]) cube([38, 63, 2200], false);
translate([550-63/2,  550-38,    0]) cube([63, 38, 2200], false);
translate([550-38/2,  550-63-38, 0]) cube([38, 63, 2200], false);
translate([1100-63/2, 0,         0]) cube([63, 38, 2200], false);
translate([1100-38/2, 38,        0]) cube([38, 63, 2200], false);
translate([1100-63/2, 550-38,    0]) cube([63, 38, 2200], false);
translate([1100-38/2, 550-63-38, 0]) cube([38, 63, 2200], false);
translate([1650-63,   0,         0]) cube([63, 38, 2200], false);
translate([1650-38,   38,        0]) cube([38, 63, 2200], false);
translate([1650-63,   550-38,    0]) cube([63, 38, 2200], false);
translate([1650-38,   550-38-63, 0]) cube([38, 63, 2200], false);

// Feet reinforcement
translate([0,         38,        0]) cube([63, 38, 200], false);
translate([0,         550-38*2,  0]) cube([63, 38, 200], false);
translate([550-63/2,  550-38*2,  0]) cube([63, 38, 200], false);
translate([1100-63/2, 550-38*2,  0]) cube([63, 38, 200], false);
translate([1650-63,   550-38*2,  0]) cube([63, 38, 200], false);
translate([1650-63,   38,        0]) cube([63, 38, 200], false);

// Lateral Truss
// Joined with
translate([0,         0, 200-63])  cube([38, 550, 63], false);
translate([0,         0, 1000-63]) cube([38, 550, 63], false);
translate([0,         0, 2200-63]) cube([38, 550, 63], false);
translate([550-38/2,  0, 200-63])  cube([38, 550, 63], false);
translate([550-38/2,  0, 1000-63]) cube([38, 550, 63], false);
translate([550-38/2,  0, 2200-63]) cube([38, 550, 63], false);
translate([1100-38/2, 0, 200-63])  cube([38, 550, 63], false);
translate([1100-38/2, 0, 1000-63]) cube([38, 550, 63], false);
translate([1100-38/2, 0, 2200-63]) cube([38, 550, 63], false);
translate([1650-38,   0, 200-63])  cube([38, 550, 63], false);
translate([1650-38,   0, 1000-63]) cube([38, 550, 63], false);
translate([1650-38,   0, 2200-63]) cube([38, 550, 63], false);


// Shelves Support
// Screwed in lastly!
// ??? Can I use dis-assembleable fasteners?!
// - like T-Nut ?
translate([0,    38,        200-28])  cube([550, 18, 28], false);
translate([0,    550-18-38, 200-28])  cube([550, 18, 28], false);
translate([550,  38,        200-28])  cube([550, 18, 28], false);
translate([550,  550-18-38, 200-28])  cube([550, 18, 28], false);
translate([1100, 38,        200-28])  cube([550, 18, 28], false);
translate([1100, 550-18-38, 200-28])  cube([550, 18, 28], false);
translate([0,    38,        600-28])  cube([550, 18, 28], false);
translate([0,    550-18-38, 600-28])  cube([550, 18, 28], false);
translate([550,  38,        600-28])  cube([550, 18, 28], false);
translate([550,  550-18-38, 600-28])  cube([550, 18, 28], false);
translate([1100, 38,        600-28])  cube([550, 18, 28], false);
translate([1100, 550-18-38, 600-28])  cube([550, 18, 28], false);
translate([0,    38,        1000-28]) cube([550, 18, 28], false);
translate([0,    550-18-38, 1000-28]) cube([550, 18, 28], false);
translate([550,  38,        1000-28]) cube([550, 18, 28], false);
translate([550,  550-18-38, 1000-28]) cube([550, 18, 28], false);
translate([1100, 38,        1000-28]) cube([550, 18, 28], false);
translate([1100, 550-18-38, 1000-28]) cube([550, 18, 28], false);
translate([0,    38,        1400-28]) cube([550, 18, 28], false);
translate([0,    550-18-38, 1400-28]) cube([550, 18, 28], false);
translate([550,  38,        1400-28]) cube([550, 18, 28], false);
translate([550,  550-18-38, 1400-28]) cube([550, 18, 28], false);
translate([1100, 38,        1400-28]) cube([550, 18, 28], false);
translate([1100, 550-18-38, 1400-28]) cube([550, 18, 28], false);
translate([0,    38,        1800-28]) cube([550, 18, 28], false);
translate([0,    550-18-38, 1800-28]) cube([550, 18, 28], false);
translate([550,  38,        1800-28]) cube([550, 18, 28], false);
translate([550,  550-18-38, 1800-28]) cube([550, 18, 28], false);
translate([1100, 38,        1800-28]) cube([550, 18, 28], false);
translate([1100, 550-18-38, 1800-28]) cube([550, 18, 28], false);

// Shelves
/*
Should regulate height to account for:
- Bottom padding
- Room skirts
- Putting shelves on the negative instead of positive like here?
- Leaving enough space at the top for monitors height?
*/
translate([0, 0, 200])  cube([1650, 550, 12], false);
translate([0, 0, 600])  cube([1650, 550, 12], false);
translate([0, 0, 1000]) cube([1650, 550, 12], false);
translate([0, 0, 1400]) cube([1650, 550, 12], false);
translate([0, 0, 1800]) cube([1650, 550, 12], false);
