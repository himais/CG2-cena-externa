/*
--------------------------------------------------------------------------------------
PROJETO 2 - B1CG2
Cena Externa
       
Nome: Maíra Satiko Tabata
Prontuário: 1561545               

- Versão do Pov-Ray: v3.7
--------------------------------------------------------------------------------------
*/

#include "colors.inc"    
#include "woods.inc" 
#include "stones.inc "
#include "porta.pov" 
#include "stones1.inc" 
#include "predio.pov"  
#include "pool.pov" 
#include "Linden.inc"
#include "TOMTREE-1.5.inc"  
#include "cadeira.pov" 
#include "guardasol.pov"
#include "plants1.inc" 
#include "escada.pov" 
//-------------------------------------------------------------------------------------// 
global_settings {
  assumed_gamma 1
 
radiosity {             // --- Settings 3 (high quality) ---
    pretrace_start 0.08
    pretrace_end   0.005
    count 400
    error_bound 0.1
    recursion_limit 1
  }
}
 
    
//-------------------------------------------------------------------------------------//  
#declare Railing_Texture = 
           texture { pigment { color White }
                     normal  { bumps 0.5 scale <0.015,0.015,0.015>}
                     finish  { diffuse 0.9 phong 0.5 reflection 0.00 }
                   } // end of texture
 
#declare Brick_Scale     = <0.09,0.061,0.061>; 
#declare Brick_Translate = <0.0, 0.035,-0.0>;
#declare Brick_Intensity = 0.20;          

#declare Tree_01 = object{TREE double_illuminate hollow scale 2.3} 

#declare C_Chair=rgb<1,0.8,0.6>*0.8;  

//-------------------------------------------------------------------------------------// 
camera { 
     //location <8, 4, -6>        
     //look_at <3, 2, 2> 
     
     
     location <8, 4, -11>        
     look_at <-1, 3, 2> 
     
     /*
       location <6, 4, -5>        
     look_at <0, 2, 2>
     */
       

}
 
 
sky_sphere {
    pigment {
      gradient y
      color_map {
        [ 0.5  color LightSteelBlue ]
        [ 1.0  color SkyBlue ]
      }
      scale 2
      translate -1
    }
  }

light_source { 
        <400,500,-200> color White
}
  
plane {
  y, 0   
  texture { pigment { image_map {"grass.png"} rotate x*90 } }
} 
  
//-------------------------------------------------------------------------------------// 

//base dos prédios 
box {
        <0, 0, -8>,
        <5, 1.5, 15>
        texture { pigment { image_map {"tile.jpg"} rotate y*90 } }
        translate<-6.5,0,0>
}
 
box {
        <0, -0.2, -8>,
        <8, 1.25, 5> 
        pigment {White}
        translate<-3.5,0.2,14> 
        finish  { diffuse 0.9 phong 0.5 reflection 0.00 }
} 

box {
        <8, -0.2, -3>,
        <13, 1.35, 5> 
        pigment {White}
        translate<-3.5,0.2,14>  
        finish  { diffuse 0.9 phong 0.5 reflection 0.00 }
}

//cerca
box {
        <5, -0.4, -8>,
        <5.05, 0.05, 15>
        texture { pigment { image_map {"cerca.png"} rotate y*90 } }
        finish { phong 0.5 }
        translate<-6.5,1.9,0>
} 

box {
        <0, -0.4, -0.01>,
        <6, 0.05, 0> 
        texture { pigment { image_map {"cerca.png"}} }
        translate<-1.5,1.9,2.65>
} 

box {
        <0, 0, -8>,
        <5, 1.5, 15>
        texture { pigment { image_map {"tile.jpg"} rotate y*90 } }
        translate<-6.5,0,0>
} 
 
                
//prédios esquerda
union{ 
        object{ predio1 scale y*0.9 translate<-5.5,0,-4>}   
        object{ predio3 scale y*0.9 translate<-0.5,0,-4>}
        object{ predio1 scale y*0.9 translate<1,0,-4>}  
        object{ predio2 scale y*0.9  translate<6,0,-4>}  
        object{ predio3 scale y*0.9 translate<9.5,0.9,-4>} 
        rotate y*-90 
        translate<-8,1.5,0>
} 

//prédios do fundo
object{ predio4 scale y*0.9 translate<-1,1.5,10>} 
object{ predio4 scale y*0.9 translate<6.5,1.5,13>} 

//predio pequeno
object{ predio5 scale y*1.05 translate<-0.5,0,3.7>} 

//Jardim
cylinder {
            <0, 0, 0>,     // Center of one end
            <0, 0.01, 0>,     // Center of other end
            1.3            // Remove end caps
            texture { pigment { image_map {"green.jpg"} rotate x*90 } } 
            translate <1.5,1.7,5>
          } 
object{ Tree_01 rotate< 0, 0, 0> scale 0.4 translate<2,1.7,4.5> } 
object{ Tree_01 rotate< 0, 0, 0> scale 0.4 translate<1,1.7,4> }   
object{ Tree_01 rotate< 0, 0, 0> scale 0.4 translate<2,1.7,5> }   
object{ Tree_01 rotate< 0, 0, 0> scale 0.4 translate<1,1.7,4> }
object{New_plant_1 scale 0.00085 translate<1,1.5,4> } 
object{New_plant_1 scale 0.00085 translate<1,1.7,4> } 
object{New_plant_1 scale 0.00085 translate<2,1.7,5> }             

//piscina  
union { 
        object{pool1 translate<1.5,0,-4.7>  scale 1.6 scale y*1.10 rotate x*90 translate<0,-7.5,-4> rotate y*225 translate<3.5,0.035,-3.4>}  
        
        union{
                object{poolfloor translate<1.5,0,-4.7>  scale 2.5 scale y*1.1 rotate x*90 translate<0,-7.5,-4> rotate y*225 translate<5.7,-4.248,-3>}    
                
                box {
                <-4, 0, -1.5>,
                < 2, 2, 1> 
                translate <2,-1.999,2.5>
                } 
        
                texture { pigment { image_map {"wood.jpg"} rotate x*90 } }
        
        }   
        
        object{pool2 translate<1.5,0,-4.7> scale 0.9 scale x*1.6 rotate x*90 translate<-1.8,-4.195,-5.65>}  //translate<-1,-5.62,-8>  
        
        translate z*0.5 
}

object{cascata rotate y*-105 scale 0.2 translate <0,-0.25,-2>}  

//arvore
object{ Tree_01 rotate< 0, 0, 0> translate<-1, 0, 0> }   
object{New_plant_1 scale 0.00085 translate<-1, 0, 0>} 
object{ Tree_01 rotate< 0, 0, 0> translate<-1, 0, -2> } 
object{New_plant_1 scale 0.00085 translate<-1, 0, -2>}
object{ Tree_01 rotate< 0, 0, 0> translate<-1, 0, -4> } 
object{New_plant_1 scale 0.00085 translate<-1, 0, -4>}  

object{ Tree_01 rotate< 0, 0, 0> translate<-1, 2, 6> } 
object{ Tree_01 rotate< 0, 0, 0> translate<0, 2, 6> }    
object{ Tree_01 rotate< 0, 0, 0> translate<3, 2, 6> } 
 
object{ Tree_01 rotate< 0, 0, 0> translate<-1, 0, -7> }  
object{ Tree_01 rotate< 0, 0, 0> translate<1, 0, -9> }  
object{ Tree_01 rotate< 0, 0, 0> translate<0, 0, -8> } 
object{ Tree_01 rotate< 0, 0, 0> translate<0, 0, -7> } 

                                                          
object{ Tree_01 rotate< 0, 0, 0> translate<4, 0, -8> }  
object{ Tree_01 rotate< 0, 0, 0> translate<6, 0, -7> } 

object{ Tree_01 rotate< 0, 0, 0> translate<7, 0, -4> }  
object{ Tree_01 rotate< 0, 0, 0> translate<6, 0, -5> } 
object{ Tree_01 rotate< 0, 0, 0> translate<7, 0, -1> } 

object{ Tree_01 rotate< 0, 0, 0> translate<5, 0, 4> }
object{ Tree_01 rotate< 0, 0, 0> translate<5, 0, 6> }  
object{ Tree_01 rotate< 0, 0, 0> translate<5, 0, 8> } 

object{ Tree_01 rotate< 0, 0, 0> scale 1.5 translate<4,1.5,13> }   
object{ Tree_01 rotate< 0, 0, 0> scale 1.5 translate<3.5,1.5,13> }  
object{ Tree_01 rotate< 0, 0, 0> scale 1.5 translate<4.5,1.5,13> }            

//cadeira      
object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 translate <0.5,0,0>}
object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*-55 translate <0,0,-0.7> }  
object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*-45 translate <1,0,0.5>}  
object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*65 translate <4.8,0,1.3>}  
object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*95 translate <4.9,0,0.6>} 

object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.035 rotate y*155 translate <1.5,0,-3.8>}    
object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.035 rotate y*155 translate <1.9,0,-3.8>}
object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.035 rotate y*135 translate <2.6,0,-3.5>}  
object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.035 rotate y*135 translate <2.8,0,-3.1>}   

object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*-55 translate <0,1.7,3> }  
object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*25 translate <0.5,1.7,3> } 

union{
        object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*-55 translate <-0.5,1.7,4> }  
        object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*25 translate <-0.1,1.7,4> } 
} 

union{
        object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*-55 translate <-0.5,1.7,4> }  
        object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*25 translate <-0.1,1.7,4> } 
        translate <4,0,0>
         
}

union{
        object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*-55 translate <-0.5,1.7,4> }  
        object{MakeEasyChair(10,C_Chair,White,White,White) scale 0.04 rotate y*25 translate <-0.1,1.7,4> } 
        object{guardasol scale 0.27 translate <-0.35,1.7,4>} 
        translate <3,0,-1>
         
}
//guardasol
object{guardasol scale 0.3}   
object{guardasol scale 0.3 translate <1.3,0,0.7>}
object{guardasol scale 0.27 translate <5.5,0,1>}    
object{guardasol scale 0.27 translate <2.3,0,-3.8>} 
object{guardasol scale 0.27 translate <3.5,0,-1.8>} 

object{guardasol scale 0.27 translate <-0.35,1.7,4>} 
object{guardasol scale 0.27 translate <0.3,1.7,3>} 
object{guardasol scale 0.27 translate <3.7,1.7,4>}  
object{guardasol scale 0.27 translate <4,1.7,3>} 
object{guardasol scale 0.27 translate <-0.35,1.7,5> finish { phong 0.5 } }    

//------------------------------------------------------------- textures
#declare Step_Texture =  // sandstone
         texture { pigment { image_map {"tile.jpg"}} 
                   normal { pigment_pattern{ brick 
                                             color White, 
                                             color White 
                                             scale Brick_Scale 
                                             translate Brick_Translate
                                             rotate<0,0,0>} Brick_Intensity}
                   finish { diffuse 0.9 phong 0.1}
                 } // end of texture 
object{ Stair_C(  2.00, // Stair___H, // stair total height
                  4.00, // Stair___X, // length of stair in x direction    
                  0.175,// Step___H_, // ca. single step height - adapted to fit the height                           
                  1.50, // Step___Z, // width  of a step in z direction
                  1, // Banisters_On 1=right; 2 = left; 3= both ; 0= off;
                  0.05, // Railing___R, // radius of railing linear tubes
                  0.03, // Railing___Rv // radius of vertical tubes 
                  0.75, // Railing___H, // railing heigth 
                  Railing_Texture, // 
                  Step_Texture   // 
                ) //-------------------------------------------------------------------//
        scale y*0.75

        //rotate<0,-60,0>        
        rotate y*180
        translate<8.5,0.00, 11>}




                                                         
                                                    



