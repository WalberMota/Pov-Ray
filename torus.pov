// Terreno ----------------------------------
plane{ <0,1,0>, -5
       texture{
          pigment{ color rgb<0.20,0.45,0>}
          normal { bumps 0.75 scale 0.015 }
          finish { phong 0.5 }
       } // Fim da textura
     } // Fim do plano (terreno)

//--------------------------------------------------------------------------
//---------------------------- objects in scene ----------------------------
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