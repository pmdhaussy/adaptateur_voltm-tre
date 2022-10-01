$fn=360;
difference() {
    union() {
        // Facade
        //minkowski() {
            cube([48, 29, 2]);
            //cylinder(0.01, 0.5, 0.5);
        //}

        // Corps
        translate([1.5, 1.5, 2]) {
            cube([45, 26, 15]);
        }
        
        // Système de blocage
        translate([1, 3, 3])
            cube([1, 23, 1]);
        translate([46, 3, 3])
            cube([1, 23, 1]);
    }

    // Espace pour le voltmètre plus petit
    // Ecran
    translate([12.5, 7.5, -1]) {
        cube([23, 15, 9]);
    }
    // Carte
    translate([6, 7.5, 7]) {
        cube([36, 15, 20]);
    }
    // Trous de fixation pour la carte
    translate([9, 10.5, 2]) {
        cylinder(20, 2.3, 2.3);
        translate([30, 0, 0])
            cylinder(20, 2.3, 2.3);
    }
}
