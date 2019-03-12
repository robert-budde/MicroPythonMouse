fudge = 0.01;

wheel_diameter = 32.0;
wheel_width = 9.0; // overall width

magnet_ring_width = 1.5; // thickness of magnet ring
magnet_ring_id = 24.0; // inner diameter of magnet ring

axle_diameter = 3.2;
axle_depth = 8.0;

slot_width = 1.0;
slot_length = 4.0; // axle center to end

module solid()
{
    difference()
    {
        union()
        {
            cylinder(d=magnet_ring_id, h=wheel_width, $fn=120);
            cylinder(d=wheel_diameter, h=wheel_width-magnet_ring_width, $fn=120);
        }
        translate([0,0,wheel_width-axle_depth])
        {
            cylinder(d=axle_diameter, h=axle_depth+fudge, $fn=120);
            translate([0,-slot_width/2,0]) cube([slot_length,slot_width,axle_depth+fudge]);
        }
    }
}

module hollow(t=0.6)
{
    difference()
    {
        union()
        {
            cylinder(d=magnet_ring_id, h=wheel_width, $fn=120);
            cylinder(d=wheel_diameter, h=wheel_width-magnet_ring_width, $fn=120);
        }
        translate([0,0,t]) difference()
        {
            union()
            {
                cylinder(d=magnet_ring_id-2*t, h=wheel_width-2*t, $fn=120);
                cylinder(d=wheel_diameter-2*t, h=wheel_width-magnet_ring_width-2*t, $fn=120);
            }
            translate([0,0,-t])
            {
                cylinder(d=axle_diameter+2*t, h=wheel_width, $fn=120);
                translate([0,-slot_width/2-t,0]) cube([slot_length+t,slot_width+2*t,wheel_width]);
            }
            translate([0,0,wheel_width/2-t]) for (r = [0:15:180])
            {
                rotate([0,0,r]) cube([wheel_diameter,0.4,wheel_width],center=true);
            }
        }
        translate([0,0,wheel_width-axle_depth])
        {
            cylinder(d=axle_diameter, h=axle_depth+fudge, $fn=120);
            translate([0,-slot_width/2,0]) cube([slot_length,slot_width,axle_depth+fudge]);
        }
    }
}

difference()
{
    hollow();
    *cube([100,100,5], center=true);
}