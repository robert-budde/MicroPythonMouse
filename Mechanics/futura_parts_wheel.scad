fudge = 0.01;

magnet_ring_od = 32.0; // outer diameter of magnet ring AS5000-MR20-44
magnet_ring_id = 24.0; // inner diameter of magnet ring
magnet_ring_t = 1.5; // thickness of magnet ring

wheel_diameter = magnet_ring_od;
wheel_width = 9.0; // overall width

axle_diameter = 3.15;
axle_depth = 8.0;

slot_width = 1.0;
slot_length = 4.0; // axle center to end

module magnetic_encoder_ring()
{
    color([0.2,0.2,0.2]) difference()
    {
        cylinder(d=magnet_ring_od,h=magnet_ring_t, $fn=120);
        translate([0,0,-fudge]) cylinder(d=magnet_ring_id,h=magnet_ring_t+2*fudge, $fn=120);
    }
}

module wheel_solid()
{
    difference()
    {
        union()
        {
            cylinder(d=magnet_ring_id, h=wheel_width, $fn=120);
            cylinder(d=wheel_diameter, h=wheel_width-magnet_ring_t, $fn=120);
        }
        translate([0,0,wheel_width-axle_depth])
        {
            cylinder(d=axle_diameter, h=axle_depth+fudge, $fn=120);
            translate([0,-slot_width/2,0]) cube([slot_length,slot_width,axle_depth+fudge]);
        }
    }
}

module wheel_hollow(t=0.6)
{
    difference()
    {
        union()
        {
            cylinder(d=magnet_ring_id, h=wheel_width, $fn=120);
            cylinder(d=wheel_diameter, h=wheel_width-magnet_ring_t, $fn=120);
        }
        translate([0,0,t]) difference()
        {
            union()
            {
                cylinder(d=magnet_ring_id-2*t, h=wheel_width-2*t, $fn=120);
                cylinder(d=wheel_diameter-2*t, h=wheel_width-magnet_ring_t-2*t, $fn=120);
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
    color([0.1,0.1,0.6]) wheel_hollow();
    *cube([100,100,5], center=true);
}
translate([0,0,wheel_width-magnet_ring_t+fudge]) magnetic_encoder_ring();