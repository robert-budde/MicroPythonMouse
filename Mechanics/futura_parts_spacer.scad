fudge = 0.01;

spacer_height = 9.0;
spacer_width = 8.5;
spacer_length = 26.5;

hole_diameter = 2.4;
hole_x_spacing = spacer_length-spacer_width;
hole_y_spacing = 38.2-spacer_width;

connection_height = 3.0;
connection_width = (spacer_length-18.0)/2;

module spacer()
{
    difference()
    {
        union()
        {
            for (my = [0,1]) mirror([0,my,0])
            {
                hull() for (mx = [0,1]) mirror([mx,0,0])
                    translate([hole_x_spacing/2,hole_y_spacing/2,0])
                        cylinder(d=spacer_width,h=spacer_height,$fn=60);
            }
            translate([-spacer_length/2,-hole_y_spacing/2,spacer_height-connection_height])
                cube([spacer_length,hole_y_spacing,connection_height]);
        }
        for (my = [0,1]) mirror([0,my,0])
        {
            for (mx = [0,1]) mirror([mx,0,0])
                translate([hole_x_spacing/2,hole_y_spacing/2,-fudge])
                    cylinder(d=hole_diameter,h=spacer_height+2*fudge,$fn=60);
        }
        translate([-spacer_length/2+connection_width,-hole_y_spacing/2+spacer_width/2,spacer_height-connection_height-fudge])
            cube([spacer_length-2*connection_width,hole_y_spacing-spacer_width,connection_height+2*fudge]);
    }
}

spacer();