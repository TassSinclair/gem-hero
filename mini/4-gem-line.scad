include <./gem-common.scad>

gem();
edge_connector();
move(distance_to_corner, 0) {
    gem();
    edge_connector();
    move(distance_to_corner, 0) {
        gem();
        edge_connector();
        move(distance_to_corner, 0) {
            gem();   
        }
    }
}
