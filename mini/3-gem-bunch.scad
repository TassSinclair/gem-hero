include <./gem-common.scad>

gem();
edge_connector();
edge_connector(60);
corner_connector();
move(distance_to_corner, 0) {
    gem();
    edge_connector(120);
}
move(distance_to_corner, 60) {
    gem();
}
