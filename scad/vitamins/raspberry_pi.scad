//
// Mendel90
//
// GNU GPL v2
// nop.head@gmail.com
// hydraraptor.blogspot.com
//
// Raspberry PI model
//
pi_width = 56;
pi_length = 85;
pi_clearance = 0.25;
pi_thickness = 1.6;

module pi_holes()
    for(hole = [[3.5, 3.5], [3.5, pi_width-3.5], [61.5, 3.5], [61.5, pi_width-3.5]])
        translate([pi_width / 2 - hole[1], hole[0] - pi_length / 2, 0])
            children();

function raspberry_pi_width() = pi_width;
function pi_on_psu() = atx_psu(psu);

card_width = 30.3;
card_thickness = 4;
card_offset = 11.5;
pi_card_clearance = 20;

module raspberry_pi() {
    vitamin("RASPBERY: Raspberry PI model B");
    color("green")
        rotate([0, 0, 90])
            translate([-pi_length / 2, - pi_width / 2, 0])
                import("../imported_stls/R-Pi.stl");
}
