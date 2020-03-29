// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>


// example key
//dcs_row(5) legend("⇪", size=9) key();
// ROW 1
$font="Font Awesome:style=Regular";
sa_row(1, 0) front_legend("", position=[-0.8, -0.7], size=5) legend("", position=[0.5, 0.4], size=7) key();

//sa_row(4, 0) legend("Y", position=[0.5, 0.4], size=7) key();


// example row
/* for (x = [0:1:4]) {
  translate_u(0,-x) dcs_row(x) key();
} */

// example layout
/* preonic_default("dcs"); */

//dactyl_manuform_4x6_legends("hipro") key();