
// Define higher resolution for transformations

$fn=60;

// 00
translate([-20, 10,0]) capwithletter("Q");
translate([0,   10,0]) capwithletter("W");
translate([20,  10,0]) capwithletter("E");
translate([-20,-10,0]) capwithletter("A");
translate([0,  -10,0]) capwithletter("S");
translate([20, -10,0]) capwithletter("D");
// 01
translate([-20, 10,0]) capwithletter("R");
translate([0,   10,0]) capwithletter("T");
translate([20,  10,0]) capwithletter("Y");
translate([-20,-10,0]) capwithletter("F");
translate([0,  -10,0]) capwithletter("G");
translate([20, -10,0]) capwithletter("H");
// 02
translate([-20, 10,0]) capwithletter("Z");
translate([0,   10,0]) capwithletter("X");
translate([20,  10,0]) capwithletter("C");
translate([-20,-10,0]) capwithletter("V");
translate([0,  -10,0]) capwithletter("B");
translate([20, -10,0]) capwithletter("N");
// 03
translate([-20, 10,0]) capwithletter("U");
translate([0,   10,0]) capwithletter("I");
translate([20,  10,0]) capwithletter("O");
translate([-20,-10,0]) capwithletter("J");
translate([0,  -10,0]) capwithletter("K");
translate([20, -10,0]) capwithletter("L");
// 04
translate([-20, 10,0]) capwithletter("P");
translate([0,   10,0]) capwithcontrol("sft");
translate([20,  10,0]) capwithcontrol("ctl");
translate([-20,-10,0]) capwithcontrol("alt");
translate([0,  -10,0]) capwithcontrol("tab");
translate([20, -10,0]) capwithcontrol("esc");
// 05
translate([-20, 10,0]) capwithcontrol("ent");
translate([0,   10,0]) capwithcontrol("bck");
translate([20,  10,0]) capwithcontrol("del");
translate([-20,-10,0]) capwithcontrol("pup");
translate([0,  -10,0]) capwithcontrol("pdw");
translate([20, -10,0]) capwithcontrol("win");
// 06
translate([-20, 10,0]) capwithcontrol("up");
translate([0,   10,0]) capwithcontrol("dwn");
translate([20,  10,0]) capwithcontrol("lft");
translate([-20,-10,0]) capwithcontrol("rgt");
translate([0,  -10,0]) capwithcontrol("fun");
translate([20, -10,0]) capwithcontrol("fun");
// 07
translate([-20, 10,0]) capwithmulti("1", "!");
translate([0,   10,0]) capwithmulti("2", "\"");
translate([20,  10,0]) capwithmulti("3", "£");
translate([-20,-10,0]) capwithmulti("4", "$");
translate([0,  -10,0]) capwithmulti("5", "%");
translate([20, -10,0]) capwithmulti("6", "^");
// 08
translate([-20, 10,0]) capwithmulti("7", "&");
translate([0,   10,0]) capwithmulti("8", "*");
translate([20,  10,0]) capwithmulti("9", "(");
translate([-20,-10,0]) capwithmulti("0", ")");
translate([0,  -10,0]) capwithmulti("-", "_");
translate([20, -10,0]) capwithmulti("=", "+");
// 09
translate([-20, 10,0]) capwithmulti("#", "~");
translate([0,   10,0]) capwithmulti("`", "¬");
translate([20,  10,0]) capwithmulti("[", "{");
translate([-20,-10,0]) capwithmulti("]", "}");
translate([0,  -10,0]) capwithmulti(";", ":");
translate([20, -10,0]) capwithmulti("'", "@");
// 10
translate([-20, 10,0]) capwithmulti(",", "<");
translate([0,   10,0]) capwithmulti(".", ">");
translate([20,  10,0]) capwithmulti("/", "?");
translate([-20,-10,0]) capwithcontrol("ins");
translate([0,  -10,0]) capwithcontrol("hom");
translate([20, -10,0]) capwithcontrol("end");
// 11
translate([-20, 10,0]) capwithmulti("|","\\");
translate([0,   10,0]) capwithmulti("|", "¥");
translate([20,  10,0]) capwithmulti("?", "/");
translate([-20,-10,0]) capwithmulti("_", "\\");
translate([0,  -10,0]) capwithmulti("2", "@");
translate([20, -10,0]) capwithcontrol("agr");
// 12
translate([-20, 10,0]) capwithmultiandfun("8", "7", "*");
translate([0,   10,0]) capwithmultiandfun("9", "8", "(");
translate([20,  10,0]) capwithmultiandfun("0", "9", ")");
translate([-20,-10,0]) capwithmultiandfun("I", "4", " ");
translate([0,  -10,0]) capwithmultiandfun("K", "5", " ");
translate([20, -10,0]) capwithmultiandfun("<", "6", " ");
// 13
translate([0, 25,0]) doublecap("shift");
translate([0, 0, 0]) doublecap("tab");
translate([0,-25,0]) doublecap("func");
// 14
translate([0, 25,0]) doublecap("bckspc");
translate([0, 0, 0]) doublecap("enter");
translate([0,-25,0]) doublecap("space");



module doublecap(letter) {
    union() {
        // sides
        color("#FFA500")
        linear_extrude(height = 8, scale=0.90)
        difference() {
            offset(r=1) square([32, 16], true);
            offset(r=1) square([30, 14], true);
        }

        // top ceiling
        difference() {
            color("#FF8C00")
            translate([0,0,5.5])
                linear_extrude(height = 2.25)
                offset(r=1)
                square([28, 13], true);
            translate([-8,-1.5,7.5])
                linear_extrude(height = 1)
                text(letter, 4, "Consolas");
        }

        // fitting support
        color("#FF7F50")
        translate([9.5, 0, 3.25])
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
        color("#FF7F50")
        translate([-9.5, 0, 3.25])
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
}

module capwithmultiandfun(one, two, fun) {
    union() {
        // sides
        color("#FFA500")
        linear_extrude(height = 8, scale=0.90)
        difference() {
            offset(r=1) square(16, true);
            offset(r=1) square(14, true);
        }

        // top ceiling
        difference() {
            color("#FF8C00")
            translate([0,0,5.5])
                linear_extrude(height = 2.25)
                offset(r=1)
                square(13, true);
            translate([-6,-3,7.5])
                linear_extrude(height = 1)
                text(one, 10, "Consolas");
            translate([2,1,7.5])
                linear_extrude(height = 1)
                text(two, 6, "Consolas");
            translate([2,-6,7.5])
                linear_extrude(height = 1)
                text(fun, 6, "Consolas");
        }

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
}

module capwithmulti(one, two) {
    union() {
        // sides
        color("#FFA500")
        linear_extrude(height = 8, scale=0.90)
        difference() {
            offset(r=1) square(16, true);
            offset(r=1) square(14, true);
        }

        // top ceiling
        difference() {
            color("#FF8C00")
            translate([0,0,5.5])
                linear_extrude(height = 2.25)
                offset(r=1)
                square(13, true);
            translate([-6,-3,7.5])
                linear_extrude(height = 1)
                text(one, 10, "Consolas");
            translate([2,-6,7.5])
                linear_extrude(height = 1)
                text(two, 6, "Consolas");
        }

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
}

module capwithcontrol(letter) {
    union() {
        // sides
        color("#FFA500")
        linear_extrude(height = 8, scale=0.90)
        difference() {
            offset(r=1) square(16, true);
            offset(r=1) square(14, true);
        }

        // top ceiling
        difference() {
            color("#FF8C00")
            translate([0,0,5.5])
                linear_extrude(height = 2.25)
                offset(r=1)
                square(13, true);
            translate([-5,-1,7.5])
                linear_extrude(height = 1)
                text(letter, 4, "Consolas");
        }

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
}

module capwithletter(letter) {
    union() {
        // sides
        color("#FFA500")
        linear_extrude(height = 8, scale=0.90)
        difference() {
            offset(r=1) square(16, true);
            offset(r=1) square(14, true);
        }

        // top ceiling
        difference() {
            color("#FF8C00")
            translate([0,0,5.5])
                linear_extrude(height = 2.25)
                offset(r=1)
                square(13, true);
            translate([-6,-3,7.5])
                linear_extrude(height = 1)
                text(letter, 10, "Consolas");
        }

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
}
