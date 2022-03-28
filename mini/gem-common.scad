
angles = [for(i = [0:5]) i * (360 / 6)];

inner_poly_radius=8 * cos(60);
outer_poly_radius=8 * cos(30);
outer_poly_z=1;
inner_poly_z=3;


gap_between_gems = cos(30);
distance_to_corner = cos(30) * outer_poly_radius * 2 + gap_between_gems;


module edge_connector(angle = 0) {
    function make_point_2d(r, angle, height) = [r * sin(angle), height];
    
    points = [
        make_point_2d(outer_poly_radius, 30, outer_poly_z),
        make_point_2d(outer_poly_radius, -30, outer_poly_z),
        make_point_2d(outer_poly_radius, -30, -outer_poly_z),
        make_point_2d(outer_poly_radius, 30, -outer_poly_z),
    ];
    
    rotate([0,0,angle]) {
        translate([(distance_to_corner - gap_between_gems) / 2,0,0]){
            rotate([90, 0, 90]) {
                linear_extrude(gap_between_gems) {
                    polygon(points);
                }
            }
        }
    }
}

module move(distance, angle) {
    translate([distance * cos(angle), distance * sin(angle), 0]) {
        children();
    }
}


module corner_connector(angle=0) {
    r = 0.5;
    rotate_angle = angle + 30;
    move(outer_poly_radius + r, rotate_angle) {
        translate([0,0, -outer_poly_z]) {
            rotate([0,0,-rotate_angle]) {
                cylinder($fn=3, r=r, h=outer_poly_z * 2);
            }
        }
    }
}

module gem() {
    function make_point(r, angle, height) = [r * cos(angle), r * sin(angle), height];
    
    top_poly = [for(th = angles) make_point(inner_poly_radius, th, inner_poly_z)];
    top_outer_poly = [for(th = angles) make_point(outer_poly_radius, th + 30, outer_poly_z)];
    bottom_outer_poly = [for(th = angles) make_point(outer_poly_radius, th + 30, -outer_poly_z)];
    bottom_poly = [for(th = angles) make_point(inner_poly_radius, th, -inner_poly_z)];
 
    function rot(n, base) = (n + 1 - base) % 6 + base;
    
    faces = [
        [5, 4, 3, 2, 1, 0],
        for(i = [0:5]) [i, (i + 1) % 6, i + 6],
        for(i = [6:11]) [i, (i - 5) % 6, rot(i, 6)],
        for(i = [6:11]) [i, rot(i, 6), rot(i, 6) + 6, i + 6],
        for(i = [12:17]) [i, rot(i, 12), rot(i, 12) + 6],
        for(i = [18:23]) [i, i-6, rot(i, 18)],
        [18, 19, 20, 21, 22, 23],
    ];
    
    polyhedron(
        concat(
            top_poly,
            top_outer_poly,
            bottom_outer_poly,
            bottom_poly
        ),
        faces
    );
}