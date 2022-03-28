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
    
        // 1 row
    move(distance_to_corner, -60) {
        tray();
        edge_connector(60);
        corner_connector(60);
        edge_connector(120);

    }
    
    
    move(distance_to_corner, 0) {
        tray();
        edge_connector(60);
        edge_connector(120);
        corner_connector(60);
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
            edge_connector(120);
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
                edge_connector(60);
                edge_connector(120);
                corner_connector(60);
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
                    edge_connector(120);
                }
            }
            // -4 row
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
                        edge_connector(120);
                        edge_connector(60);
                        corner_connector(60);
                    }
                }
                // -5 row
                move(distance_to_corner, 60) {
                    tray();
                    edge_connector(120);
                    corner_connector(60);
                    edge_connector(0);
                    edge_connector(60);
                    corner_connector(0);
                    move(distance_to_corner, 0) {
                        tray();
                        edge_connector(0);
                        edge_connector(120);
                        corner_connector(60);
                        edge_connector(60);
                        corner_connector(0);
                        move(distance_to_corner, 0) {
                            tray();
                            edge_connector(0);
                            edge_connector(120);
                            corner_connector(60);
                            edge_connector(60);
                            corner_connector(0);
                            move(distance_to_corner, 0) {
                                tray();
                                edge_connector(120);
                                corner_connector(60);
                                edge_connector(60);
                            }
                        }
                    }
                    // -6 row
                    move(distance_to_corner, 120) {
                        tray();
                        edge_connector(0);
                        move(distance_to_corner, 0) {
                            tray();
                            edge_connector(0);
                            edge_connector(60);
                            corner_connector(0);
                            move(distance_to_corner, 0) {
                                tray();
                                edge_connector(120);
                                corner_connector(60);
                                edge_connector(0);
                                edge_connector(60);
                                corner_connector(0);
                                move(distance_to_corner, 0) {
                                    tray();
                                    edge_connector(120);
                                    corner_connector(60);
                                    edge_connector(0);
                                    edge_connector(60);
                                    corner_connector(0);
                                    move(distance_to_corner, 0) {
                                        tray();
                                        edge_connector(120);
                                        corner_connector(60);
                                        edge_connector(0);
                                        edge_connector(60);
                                        corner_connector(0);
                                        move(distance_to_corner, 0) {
                                            tray();
                                            edge_connector(120);
                                            corner_connector(60);
                                            edge_connector(60);
                                        }
                                    }
                                }
                            }
                            move(distance_to_corner, 60) {
                                tray();
                                edge_connector(0);
                                move(distance_to_corner, 0) {
                                    tray();
                                    edge_connector(0);
                                    edge_connector(60);
                                    corner_connector(0);
                                    move(distance_to_corner, 0) {
                                        tray();
                                        edge_connector(120);
                                        corner_connector(60);
                                        edge_connector(0);
                                        edge_connector(60);
                                        corner_connector(0);
                                        move(distance_to_corner, 0) {
                                            tray();
                                            edge_connector(120);
                                            corner_connector(60);
                                            edge_connector(0);
                                            edge_connector(60);
                                            corner_connector(0);
                                            move(distance_to_corner, 0) {
                                                tray();
                                                edge_connector(120);
                                                edge_connector(0);
                                                move(distance_to_corner, 0) {
                                                    tray();
                                                }
                                            }
                                        }
                                    }
                                    move(distance_to_corner, 60) {
                                        tray();
                                        edge_connector(0);
                                        move(distance_to_corner, 0) {
                                            tray();
                                            edge_connector(0);
                                            edge_connector(60);
                                            corner_connector(0);
                                            move(distance_to_corner, 0) {
                                                tray();
                                                edge_connector(120);
                                                corner_connector(60);
                                                edge_connector(60);
                                            }
                                            move(distance_to_corner, 60) {
                                                tray();
                                                edge_connector(0);
                                                move(distance_to_corner, 0) {
                                                    tray();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}