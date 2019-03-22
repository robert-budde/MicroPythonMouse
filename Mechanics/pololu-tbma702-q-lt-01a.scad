use <futura_parts_wheel.scad>;

fudge = 0.01;

gear_length = 9.0;
gear_width = 12.0;
gear_height = 10.0;
gear_roundness = 0.5;

pcb_width = 390*0.0254;
pcb_width2 = 1000*0.0254;
pcb_length = 3000*0.0254;
pcb_length2 = 650*0.0254;
pcb_height = 1.6;

$fn = 120;

module gearbox()
{
    hull()
    {
        for (my = [0,1]) mirror([0,my,0]) for (mz = [0,1]) mirror([0,0,mz])
            translate([0,gear_width/2-gear_roundness,gear_height/2-gear_roundness])
                rotate([0,90,0]) cylinder(r=gear_roundness,h=gear_length,$fn=60);
    }
}

module tbma()
{
    translate([0,0,-14.0-pcb_height]) difference()
    {
        union()
        {
            translate([0,-pcb_width/2,0]) cube([pcb_length,pcb_width,pcb_height]);
            translate([pcb_length-pcb_length2,-pcb_width2/2,0]) cube([pcb_length2,pcb_width2,pcb_height]);
        }
        translate([pcb_length-100*0.0254,0,-fudge]) cylinder(d=3.0,h=pcb_height+2*fudge);
        translate([pcb_length-(650+625)*0.0254,0,-fudge]) hull()
        {
            translate([-(1270-120)/2*0.0254,0,0]) cylinder(d=120*0.0254,h=pcb_height+2*fudge);
            translate([(1270-120)/2*0.0254,0,0]) cylinder(d=120*0.0254,h=pcb_height+2*fudge);
        }
    }
}

*translate([-9-1,0,0]) rotate([0,90,0]) color([0.1,0.1,0.6]) wheel_hollow();
*translate([-1+fudge,0,0]) rotate([0,-90,0]) magnetic_encoder_ring();

*gearbox();
*tbma();

difference()
{
    minkowski()
    {
        intersection()
        {
            union()
            {
                gearbox();
                tbma();
                translate([0,-5/2,-14-pcb_height]) cube([10,5,14]);
            }
            translate([fudge,-50/2,-100/2]) cube([fudge,50,100]);
        }
        rotate([0,90,0]) cylinder(d=2,h=7-fudge);
    }
    gearbox();
    tbma();
    translate([0,-5/2,-14-pcb_height]) cube([10,5,14]);
    translate([7/2,50,-9]) rotate([90,0,0]) cylinder(d=3,h=100);
}