
// POV-Ray 3.7 Arquivo de cena "aula1.pov"
// por Walber S. Mota, 14-Jan-2024
//-------------------------------------------

#version  3.7;  //seleção de versão
global_settings { assumed_gamma 1.8 }  //correção gama

#default{ finish{ ambient 0.1 diffuse 0.9 }} //valores padrão para iluminação indireta/direta

#include "colors.inc"                  // incluindo arquivos com cores e texturas predefinidas


#include "textures.inc"                  
// #include "stones.inc"
// #include "shapes.inc"
// #include "glass.inc"
// #include "metals.inc"
// #include "woods.inc"

// Fonte luminosa principal
light_source { <50.0, 7.0, -15.0> colour White }

camera {
    location <0.0,20.0,30.0>
    look_at  <0.0,1.0, -10.0>
}

// Céu -------------------------------------
plane{ <0,0,-40>,1 hollow
       texture{
         pigment{ bozo turbulence 0.92
           color_map{
                 [0.00 rgb<0.05,0.15,0.45>]
                 [0.50 rgb<0.05,0.15,0.45>]
                 [0.70 rgb<1,1,1>        ]
                 [0.85 rgb<0.2,0.2,0.2>  ]
                 [1.00 rgb<0.5,0.5,0.5>  ]
                       } //
           scale<0,0,1.5>*2.5
           translate<0,0,0>
           } // Fim do pigmento
         finish {ambient 1 diffuse 0}
        } // Fim da textura
       scale 5000}

// Terreno ----------------------------------
plane{ <0,1,0>, 0
       texture{
          pigment{ color rgb<0.22,0.45,0>}
          normal { bumps 0.75 scale 0.015 }
          finish { phong 0.1 }
       } // Fim da textura
     } // Fim do plano (terreno)



//Objeto toroidal
torus { 7.0, 3.0
   // Textura da camada inferior. Usa um bozo "esticado" para grãos finos e porosos
   texture {
      pigment {
         bozo
         color_map {
            [0.0 0.4 color BakersChoc  color BakersChoc ]
            [0.4 1.01 color Tan color Tan]
         }
         scale <4, 0.05, 0.05>
      }
   }

}
