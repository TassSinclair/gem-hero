include <./tray-common.scad>

// 0 row
tray();

for(i = [0:60:300]) {
    edge_connector(i);
    corner_connector(i);
    rotate([0,0,i]) {
        move(distance_to_corner, 0) {
            tray();
            edge_connector(0);
            edge_connector(120);
            corner_connector(60);
            move(distance_to_corner, 0) {
                tray();
                edge_connector(0);
                move(distance_to_corner, 0) {
                    tray();
                }
            }
            move(distance_to_corner, 60) {
                tray();
                edge_connector(120);
                corner_connector(120);
                edge_connector(-120);
                edge_connector(180);
                corner_connector(-120);
                edge_connector(-60);
            }
        }
    }
}
