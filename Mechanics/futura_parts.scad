use <futura_parts_bracket.scad>;
use <futura_parts_spacer.scad>;
use <futura_parts_wheel.scad>;

spacer_height = 9.0;
bracket_length = 17.3;
spacer_width = 8.5;
hole_y_spacing = 38.2;

color([0.1,0.1,0.6]) spacer();
for (my = [0,1]) mirror([0,my,0])
{
    translate([0,hole_y_spacing/2-spacer_width+bracket_length,spacer_height]) rotate([0,0,-90]) color([0.9,0.9,0.9]) bracket();
    translate([0,hole_y_spacing/2-spacer_width+bracket_length+9+2,spacer_height+5]) rotate([90,0,0]) color([0.1,0.1,0.6]) hollow();
}