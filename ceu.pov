// POV-Ray 3.7 Arquivo de cena "aula1.pov"
// por Walber S. Mota, 14-Jan-2024
//-------------------------------------------

#version  3.7;  //seleção de versão
global_settings { assumed_gamma 2.0 }  //correção gama

#default{ finish{ ambient 0.1 diffuse 0.9 }} //valores padrão para iluminação indireta/direta

#include "colors.inc"                  // incluindo arquivos com cores e texturas predefinidas


#include "textures.inc"   
// Céu -------------------------------------
plane{ <0,0,50>,1 hollow
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
           translate<0,5,0> //<   , aumenta nublado, nuvens mais escuras/luminosas>
           } // Fim do pigmento
         finish {ambient 1 diffuse 0}
        } // Fim da textura
       scale 5000}

