
// POV-Ray 3.7 Arquivo de cena "aula1.pov"
// por Walber S. Mota, 14-Jan-2024
//-------------------------------------------

#version  3.7;  //seleção de versão
global_settings { assumed_gamma 2.0 }  //correção gama

#default{ finish{ ambient 0.1 diffuse 0.9 }} //valores padrão para iluminação indireta/direta

#include "colors.inc"                  // incluindo arquivos com cores e texturas predefinidas


#include "textures.inc"                  
// #include "stones.inc"
// #include "shapes.inc"
// #include "glass.inc"
// #include "metals.inc"
// #include "woods.inc"

// Fonte luminosa principal
light_source { <2.0, 50.0, -10.0> colour White }

camera {
    location <0,40.0,-60.0>  //ponto de vista
    look_at  <0.0,10.0, -10.0> //onde olhar
    right x*image_width/image_height   //proporção da tela
    angle 35      //ângulo da câmera
}

// Terreno ----------------------------------
plane{ <0,1,0>, -5
       texture{
          pigment{ color rgb<0.20,0.45,0>}
          normal { bumps 0.75 scale 0.015 }
          finish { phong 0.5 }
       } // Fim da textura
     } // Fim do plano (terreno)



//Objeto toroidal
torus { 9.0, 1.0
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
