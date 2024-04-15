// PoVRay 3.7 Scene File "torus.pov"
// autor:  Walber Mota, 15-Abril-2024
//--------------------------------------------------------------------------

#version 3.7;
global_settings{ assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 }} 

//--------------------------------------------------------------------------
#include "colors.inc"
#include "textures.inc"

// camera ------------------------------------------------------------------
#declare Camera_0 = camera {/*ultra_wide_angle*/ angle 75      // visão frontal
                            location  <0.0 , 1.0 ,-3.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_1 = camera {/*ultra_wide_angle*/ angle 90   // vista diagonal
                            location  <2.0 , 2.5 ,-3.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_2 = camera {/*ultra_wide_angle*/ angle 90 // vista lateral direita
                            location  <3.0 , 1.0 , 0.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_3 = camera {/*ultra_wide_angle*/ angle 90        // vista de cima
                            location  <0.0 , 3.0 ,-0.001>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
camera{Camera_1}

// sol ---------------------------------------------------------------------
light_source{<1500,2500,-2500> color White}

// céu ---------------------------------------------------------------------
plane{ <0,1,0.2>,1 hollow
       texture{
         pigment{ bozo turbulence 0.92
           color_map{
                 [0.00 rgb<0.2,0.2,1>*0.9]
                 [0.50 rgb<0.2,0.2,1>*0.9]
                 [0.70 rgb<1,1,1>        ]
                 [0.85 rgb<0.2,0.2,0.2>  ]
                 [1.00 rgb<0.5,0.5,0.5>  ]
                       } //
           scale<1,1,1.5>*2.5
           translate<0,0,0>
           } // Fim do pigmento
         finish {ambient 1 diffuse 0}
        } // Fim da textura
       scale 5000}

// nevoeiro no chão -------------------------------------------------
fog { fog_type   2
      distance   150
      color      White *0.7 
      fog_offset 0.1
      fog_alt    3.5
      turbulence 1.8
    }
// Terreno ----------------------------------
/*
plane{ <0,1,0>, -2
       texture{
          pigment{ color rgb<0.20,0.45,0>}
          normal { bumps 0.75 scale 0.015 }
          finish { phong 0.5 }
       } // Fim da textura
     } // Fim do plano (terreno)
*/
// sea ---------------------------------------------------------------------
plane{<0,1,0>, 0 
       texture{Polished_Chrome
               normal { crackle 0.15 scale <0.35,0.25,0.25> turbulence 0.5 } 
               finish { reflection 0.60}}}

//--------------------------------------------------------------------------
//---------------------------- objetos em cena ----------------------------
//--------------------------------------------------------------------------
torus{ 1.00, 0.25
       //rotate<0,0,0>
       translate< 1.2, 0.1,1>
       texture{
         pigment{ color rgb<0.5,0.6,0.4>} 
         finish { phong 1} 
       }
     }

torus{ 1.00, 0.25
       rotate<90,0,0>
       translate<-0.5, 1+0.25,0 >
       texture{
          pigment{ color rgb<1,0.6,0>} 
          finish { phong 1} 
       } 
     }