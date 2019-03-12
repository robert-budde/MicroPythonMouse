fudge = 0.01;

gear_length = 9.0;
gear_width = 12.0;
gear_height = 10.0;
gear_roundness = 0.5;
gear_wt = 0.4+0.2;
gear_x1 = 0.0-0.1;
gear_x2 = 5.0-0.1;
gear_x3 = gear_length-gear_wt+0.1;

bracket_height = 11.5;
bracket_length = 17.3;
bracket_width = 15.0;
bracket_roundness = 1.5;

flange_distance = 18.0;
flange_diameter = 8.5;
flange_height = 3.0;

nut_diameter = 5.0;

hole_diameter = 2.3;
hole_height = 1.4;

bottom_opening_width = 4.0;
bottom_opening_length = 15.0;

module bracket()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([0,-bracket_width/2,0]) cube([bracket_length, bracket_width, fudge]);
                for (my = [0,1]) mirror([0,my,0])
                    translate([0,bracket_width/2-bracket_roundness,bracket_height-bracket_roundness])
                        rotate([0,90,0]) cylinder(r=bracket_roundness,h=bracket_length,$fn=60);
            }
            hull() for (my = [0,1]) mirror([0,my,0])
                translate([bracket_length-flange_diameter/2,flange_distance/2,0])
                    cylinder(d=flange_diameter,h=flange_height,$fn=60);
        }
        hull() for (my = [0,1]) mirror([0,my,0])
            translate([bracket_length-flange_diameter/2,flange_distance/2,-fudge])
                cylinder(d=hole_diameter,h=hole_height+2*fudge,$fn=60);
        for (my = [0,1]) mirror([0,my,0])
            translate([bracket_length-flange_diameter/2,flange_distance/2,hole_height])
                cylinder(d=nut_diameter,h=flange_height-hole_height+fudge,$fn=6);
        translate([bracket_length-flange_diameter/2,0,hole_height+(flange_height-hole_height)/2]) cube([bottom_opening_width,flange_distance,flange_height-hole_height+fudge],center=true);
        translate([bracket_length-flange_diameter/2,0,hole_height/2-fudge]) cube([bottom_opening_width,bottom_opening_length,flange_height-hole_height+2*fudge],center=true);
        
        // gearbox
        difference()
        {
            hull()
            {
                translate([-fudge,-gear_width/2,-fudge]) cube([gear_length+fudge, gear_width, fudge]);
                for (my = [0,1]) mirror([0,my,0])
                    translate([-fudge,gear_width/2-gear_roundness,gear_height-gear_roundness])
                        rotate([0,90,0]) cylinder(r=gear_roundness,h=gear_length+fudge,$fn=60);
            }
            difference()
            {
                translate([0,-gear_width/2,gear_height-2.2]) cube([gear_length,2.2,2.2]);
                translate([gear_x1,-gear_width/2-fudge,gear_height-4-fudge]) cube([gear_wt,4+2*fudge,4+2*fudge]);
                translate([gear_x2,-gear_width/2-fudge,gear_height-4-fudge]) cube([gear_wt,4+2*fudge,4+2*fudge]);
                translate([gear_x3,-gear_width/2-fudge,gear_height-4-fudge]) cube([gear_wt,4+2*fudge,4+2*fudge]);
                translate([gear_x1,-gear_width/2+2.2,gear_height-2.2]) rotate([0,90,0]) cylinder(d=3.0+0.5,h=gear_x2-gear_x1+gear_wt,$fn=60);
                translate([gear_x2,-gear_width/2+2.2,gear_height-2.2]) rotate([0,90,0]) cylinder(d=3.3+0.5,h=gear_x3-gear_x2+gear_wt,$fn=60);
            }
        }
        // lower rectangular free cut
        translate([-fudge,-gear_width/2,-fudge]) cube([bracket_length+2*fudge, gear_width, 4+fudge]);   
        // motor
        translate([gear_length-fudge,0,5]) intersection()
        {
            rotate([0,90,0]) cylinder(d=12.0,h=bracket_length+2*fudge,$fn=120);
            translate([0,-12/2,-10/2]) cube([bracket_length+2*fudge, 12, 10]);
        }
    }
}

bracket();