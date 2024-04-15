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
           translate<0,0,-40>
           } // Fim do pigmento
         finish {ambient 1 diffuse 0}
        } // Fim da textura
       scale 5000}