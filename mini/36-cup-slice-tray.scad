include <./tray-common.scad>

// 0 row
tray();
edge_connector(0);
edge_connector(60);
corner_connector(0);
move(distance_to_corner, 0) {
    tray();
    edge_connector(0);
    edge_connector(60);
    corner_connector(0);
    edge_connector(120);
    corner_connector(60);
    move(distance_to_corner, 0) {
        tray();
        edge_connector(0);
        edge_connector(60);
        corner_connector(0);
        edge_connector(120);
        corner_connector(60);
        move(distance_to_corner, 0) {
            tray();
            edge_connector(0);
            edge_connector(60);
            corner_connector(0);
            edge_connector(120);
            corner_connector(60);
            move(distance_to_corner, 0) {
                tray();
                edge_connector(0);
                edge_connector(60);
                corner_connector(0);
                edge_connector(120);
                corner_connector(60);
                move(distance_to_corner, 0) {
                    tray();
                    edge_connector(60);
                    edge_connector(120);
                    corner_connector(60);

                }
            }
        }
        // 1 row
        move(distance_to_corner, -60) {
            tray();
            edge_connector(60);
            corner_connector(60);
            edge_connector(120);
             move(distance_to_corner, 00) {
                tray();
                edge_connector(60);
                corner_connector(60);
                edge_connector(120);
                corner_connector(120);
                edge_connector(180);
            }
            // 2 row
            move(distance_to_corner, -120) {
                tray();
                edge_connector(60);
            }
            
        }
    }
}
// -1 row
move(distance_to_corner, 60) {
    tray();
    edge_connector(0);
    edge_connector(60);
    corner_connector(0);
    edge_connector(120);
    corner_connector(60);
    move(distance_to_corner, 0) {
        tray();
        edge_connector(0);
        edge_connector(60);
        corner_connector(0);
        edge_connector(120);
        corner_connector(60);
        move(distance_to_corner, 0) {
            tray();
            edge_connector(0);
            edge_connector(60);
            corner_connector(0);
            edge_connector(120);
            corner_connector(60);
            move(distance_to_corner, 0) {
                tray();
                edge_connector(0);
                edge_connector(60);
                corner_connector(0);
                edge_connector(120);
                corner_connector(60);
                move(distance_to_corner, 0) {
                    tray();
                    edge_connector(0);
                    edge_connector(60);
                    corner_connector(0);
                    edge_connector(120);
                    corner_connector(60);
                    move(distance_to_corner, 0) {
                        tray();
                        edge_connector(60);
                        edge_connector(120);
                        corner_connector(60);
                    }
                }
            }
        }
    }
    // -2 row
    move(distance_to_corner, 120) {
        tray();
        edge_connector(0);
        edge_connector(60);
        corner_connector(0);
        move(distance_to_corner, 0) {
            tray();
            edge_connector(0);
            edge_connector(60);
            corner_connector(0);
            edge_connector(120);
            corner_connector(60);
            move(distance_to_corner, 0) {
                tray();
                edge_connector(0);
                edge_connector(60);
                corner_connector(0);
                edge_connector(120);
                corner_connector(60);
                move(distance_to_corner, 0) {
                    tray();
                    edge_connector(0);
                    edge_connector(60);
                    corner_connector(0);
                    edge_connector(120);
                    corner_connector(60);
                    move(distance_to_corner, 0) {
                        tray();
                        edge_connector(0);
                        edge_connector(60);
                        corner_connector(0);
                        edge_connector(120);
                        corner_connector(60);
                        move(distance_to_corner, 0) {
                            tray();
                            edge_connector(0);
                            edge_connector(120);
                            move(distance_to_corner, 0) {
                                tray();
                            }
                        }
                    }
                }
            }
        }
        // -3 row
        move(distance_to_corner, 60) {
            tray();
            edge_connector(0);
            edge_connector(60);
            corner_connector(0);
            edge_connector(120);
            corner_connector(60);
            move(distance_to_corner, 0) {
                tray();
                edge_connector(0);
                edge_connector(60);
                corner_connector(0);
                edge_connector(120);
                corner_connector(60);
                move(distance_to_corner, 0) {
                    tray();
                    edge_connector(0);
                    edge_connector(60);
                    corner_connector(0);
                    edge_connector(120);
                    corner_connector(60);
                    move(distance_to_corner, 0) {
                        tray();
                        edge_connector(0);
                        edge_connector(120);
                        move(distance_to_corner, 0) {
                            tray();
                        }
                    }
                }
            }
            // -4 row
            move(distance_to_corner, 120) {
                tray();
                edge_connector(0);
                edge_connector(60);
                edge_connector(120);
                corner_connector(0);
                corner_connector(60);
                move(distance_to_corner, 0) {
                    tray();
                    edge_connector(0);
                    edge_connector(60);
                    corner_connector(0);
                    edge_connector(120);
                    corner_connector(60);
                    move(distance_to_corner, 0) {
                        tray();
                        edge_connector(0);
                        edge_connector(120);
                        move(distance_to_corner, 0) {
                            tray();
                        }
                    }
                }
                // -5 row
                move(distance_to_corner, 120) {
                    tray();
                    edge_connector(0);
                    edge_connector(60);
                    corner_connector(0);
                    move(distance_to_corner, 0) {
                        tray();
                        edge_connector(0);
                        edge_connector(120);
                        move(distance_to_corner, 0) {
                            tray();
                        }
                    }
                    // -6 row
                    move(distance_to_corner, 60) {
                        tray();
                    }
                }
            }
        }
    }
}
// 1 row
move(distance_to_corner, -60) {
    tray();
    edge_connector(60);
    corner_connector(60);
    edge_connector(120);

}