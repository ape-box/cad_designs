

/**
 * Handle Width: 23.5 mm
 * Handle Height: 5.5 mm
 * Handle Pivot diameter: 22mm
 * Handle Pivot fitting: 11.5mm  (50%)
 * Handle Pivot fitting X lip: 2.5mm
 */


$fn=60;

sf=1.05;
hw=23.5*sf;
hh=5.5*sf;
hpfx=2.5*sf;
pr=11*sf;

difference() {
    sphere(r=hw);

    union() {
        // Handle
        translate([hw-pr-hpfx,0,0]) cube([2*hw, hw, hh], true);

        // mounting cutoff
        translate([hw-pr-hpfx,hw-0.1,0]) cube([2*hw, hw, hh], true);

        /// Pivot
        rotate([-90,0,0])           cylinder(r=pr, h=3*pr);
    }
}

