angles = [for(i = [0:5]) i * (360 / 6)];

inner_poly_radius=8 * cos(60);
outer_poly_radius=8 * cos(30);
outer_poly_border_radius = outer_poly_radius + .25;

outer_poly_z=1;
inner_poly_z=3;
height=2.3;
overlap = 0.001;

gap_between_gems = cos(30);
distance_to_corner = cos(30) * (outer_poly_radius + .5) * 2;

function make_point_2d(r, angle, height) = [r * sin(angle), height];
function make_point(r, angle, height) = [r * cos(angle), r * sin(angle), height];
function make_point_2d2(r, angle) = [r * cos(angle), r * sin(angle)];

module edge_connector(angle = 0) {
    points = [
        make_point_2d(outer_poly_border_radius, 30, outer_poly_z),
        make_point_2d(outer_poly_border_radius, -30, outer_poly_z),
        make_point_2d(outer_poly_border_radius, -30, -height),
        make_point_2d(outer_poly_border_radius, 30, -height),
    ];
    
    rotate([0,0,angle]) {
        translate([(distance_to_corner - gap_between_gems/2) / 2,0,0]){
            rotate([90, 0, 90]) {
                linear_extrude(gap_between_gems/2) {
                    polygon(points);
                }
            }
        }
    }
}



module corner_connector(angle=0) {
    r = 1/4 + overlap;
    rotate_angle = angle + 30;
    
    points = [
        make_point_2d2(r, -rotate_angle),
        make_point_2d2(r, -rotate_angle - 120),
        make_point_2d2(r, -rotate_angle - 240),
    ];

    move(outer_poly_border_radius + r, rotate_angle) {
        translate([0,0,-height]) {
            linear_extrude(height + outer_poly_z) {
                polygon(points);
            }
        }
    }
}

module tray() {    
    function rot(n, base) = (n + 1 - base) % 6 + base;
    
    cup_poly = [for(th = angles) make_point(inner_poly_radius, th, outer_poly_z-inner_poly_z)];
    top_outer_poly = [for(th = angles) make_point(outer_poly_radius, th + 30, outer_poly_z)];
    top_outer_outer_poly = [for(th = angles) make_point(outer_poly_border_radius + overlap, th + 30, outer_poly_z)];
    bottom_outer_poly = [for(th = angles) make_point(outer_poly_border_radius + overlap, th + 30, -height)];

    faces = [
        [5, 4, 3, 2, 1, 0],
        for(i = [0:5]) [i, (i + 1) % 6, i + 6],
        for(i = [6:11]) [i, (i - 5) % 6, rot(i, 6)],
        for(i = [6:11]) [i, rot(i, 6), rot(i, 6) + 6, i + 6],
        for(i = [12:17]) [i, rot(i, 12), rot(i, 12) + 6, i + 6],
        [18, 19, 20, 21, 22, 23],
    ];

    polyhedron(
        concat(
            cup_poly,
            top_outer_poly,
            top_outer_outer_poly,
            bottom_outer_poly
        ),
        faces
    );
    children();
}

module move(distance, angle) {
    translate([distance * cos(angle), distance * sin(angle), 0]) {
        children();
    }
}