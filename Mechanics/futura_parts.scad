use <futura_parts_bracket.scad>;
use <futura_parts_spacer.scad>;
use <futura_parts_wheel.scad>;

spacer_height = 9.0;
bracket_length = 17.3;
spacer_width = 8.5;
hole_y_spacing = 38.2;

fudge = 0.05;

module pcb()
{
    difference()
    {
        union()
        {
            hull() for (my = [0,1]) mirror([0,my,0])
            {
                translate([66.0-36.0,6.0/2,0]) cylinder(d=68.45,h=1.6,$fn=120);
            }
            hull()
            {
                translate([-26.0-10.0,-54.0/2,0]) cube([10.0,54.0,1.6]);
                translate([-26.0,-74.0/2,0]) cube([56.0,74.0,1.6]);
            }
        }
        for (my = [0,1]) mirror([0,my,0])
        {
            translate([-32.0/2,56.0/2,-fudge]) cube([32.0,9.0+fudge,1.6+2*fudge]);
            for (mx = [0,1]) mirror([mx,0,0])
                translate([18.0/2,29.7/2,-fudge])
                    cylinder(d=0.09*25.4,h=1.6+2*fudge,$fn=120);
        }
    }
}

// sensor placement
for (my = [0,1]) mirror([0,my,0])
    translate([-3/2,56.0/2-3-0.5,0]) color([0.1,0.1,0.1]) cube([3,3,0.9]);

// 5+spacer_height=14.0
// middle of magnet-ring flange (od - id)/4 + id/2 = (od + id)/4 = 14.0
// -> top of pcb equals middle of magnet ring...


translate([0,0,-1.6]) color([0.1,0.7,0.1]) pcb();

color([0.1,0.1,0.6]) spacer();
for (my = [0,1]) mirror([0,my,0])
    translate([0,hole_y_spacing/2-spacer_width+bracket_length,spacer_height+fudge])
{
    rotate([0,0,-90]) color([0.9,0.9,0.9]) bracket();
    translate([0,9+1,5]) rotate([90,0,0]) color([0.1,0.1,0.6]) wheel_hollow();
    translate([0,1-fudge,5]) rotate([-90,0,0]) magnetic_encoder_ring();
}

