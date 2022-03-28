include <./gem-common.scad>

gem();
edge_connector(0);
move(distance_to_corner, 0) {
    gem();
    edge_connector(0);
    move(distance_to_corner, 0) {
        gem();
        edge_connector(60);
        move(distance_to_corner, 60) {
            gem();
        }
        edge_connector(-60);
        move(distance_to_corner, -60) {
            gem();
        }
    }
}
