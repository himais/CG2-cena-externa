#include "colors.inc"    
#include "woods.inc" 
#include "stones.inc "
#include "porta.pov"    
#include "metals.inc"
#include "stones1.inc" 
#include "textures.inc"




camera { 
     location <0, 3, -9>        
     look_at <0, 2, 2>   

}
 

background { 
        LightSteelBlue 
}

light_source { 
        <500,500,-1000> color White
}    
  




//-------------------------------------------------------------------------------------// 

  
 
  
  
#include "shapes3.inc" 

#declare base = 
union{
        object{ Round_Conic_Torus(
                   1.00, // >0, vertical center distance
                   0.80, // >0, upper radius
                   0.50, // >0, lower radius
                   0.10, // border radius,
                   0 
                ) 
                texture{ pigment{ color rgb <1,1,1>}
                         finish { phong 0.1}
                       } // end texture
                scale y*1.2
                rotate <0,0,0>
                translate < 0, 1, 0>
              } // end of object --------------------f object --------------------     
      
      
      
      sphere{
              <0,0,0>,0.5 
              scale y*1.95
              scale x*0.7
              translate y*1.5
              translate x*0.15  
              rotate z*-14 
              pigment{White}
      } 
      
      sphere{
              <0,0,0>,0.7 
              translate y*1.8
              translate x*0
              scale y*1.3 
              scale x*1.3  
              translate z*0.2
              pigment{White}
      } 
      
      sphere{
              <0,0,0>,0.7 
              translate y*1.9
              translate x*-0.1
              scale y*1.3 
              scale x*1.3  
              translate z*-0.1
              pigment{White}
      } 
      
     sphere{
              <0,0,0>,0.7 
              translate y*1.8
              translate x*0
              translate z*0.2
              pigment{White}
      }
      
      sphere{
              <0,0,0>,0.6 
              translate y*1
              translate x*0
              translate z*0.2
              pigment{White}
      } 
      
      sphere{
              <0,0,0>,0.7 
              translate y*1.2
              pigment{White}
              translate x*0.1
      } 
      sphere{
              <0,0,0>,0.7 
              translate y*1.3
              translate x*0.07
              pigment{White}
      }
      /*
      sphere{
              <0,0,0>,0.45 
              translate y*0.45
              translate x*0
              translate z*0.2
              scale y*1.5 
              scale x*1.1
              rotate z*-10
              pigment{White}
      }    
         */
      scale y*1.1
      
}       

//object{base } 


#declare basedif = 
difference{ 
        object{base } 
        
        box {
            <-2, 0,   -1>,  // Near lower left corner
            < 2, 5,  0>   // Far upper right corner             
           
         }   
         
} 

 
#declare pool = 
difference {
        object{basedif pigment {White}}
        
        object{basedif 
        scale 0.9 
        scale y*1.05  
        pigment{MediumTurquoise}
        //texture{ Polished_Chrome }  
        translate <0.01,0.12,-0.005> 
        normal{ bumps 0.03
                 scale <1,0.25,0.25>*1
                 turbulence 0.6
               }
        }  
}  


#declare poolfloor = 
union {
        object{basedif }
        
        object{basedif 
        scale 0.9 
        scale y*1.05  
        
        texture{ Polished_Chrome } 
        }  
}  


#declare basedif2 = 
difference{
      sphere{
              <0,0,0>,0.6 
              translate y*1
              translate x*0
              translate z*0.2 
              pigment {White}
      }
       
        box {
            <-2, 0,   -1>,  // Near lower left corner
            < 2, 5,  0>   // Far upper right corner             
           
         }    
                       scale y*1.1
         pigment {White}
} 



#declare pooll = 
difference {
        object{basedif2 pigment {White}}
        
        object{basedif2 
        scale 0.9 
        scale y*1  
        pigment{MediumTurquoise}
        //texture{ Polished_Chrome }  
        translate <0.01,0.12,-0.005> 
        normal{ bumps 0.03
                 scale <1,0.25,0.25>*1
                 turbulence 0.6
               }
        }  
} 






/*union {
        object{basedif2 scale 1.05}
        
        object{basedif2 
        scale 0.9
        }
         
         
        //scale x*0.8
        translate y*2  
} */

#declare pool1 = 
union{

intersection{
 object{basedif} 
 box {
            <-1, -1,   -1>,  // Near lower left corner
            < 1, 5,  0>   // Far upper right corner    
            translate z*1.03
            texture { pigment { image_map {"water.jpg"} } }    
           
         }  
         
         
         }
             
object{pool}  


} 

#declare pool1 = 
union{
        intersection{
                object{basedif} 
                box {
                            <-1, -1,   -1>,  // Near lower left corner
                            < 1, 5,  0>   // Far upper right corner    
                            translate z*1.03
                            texture { pigment { image_map {"water.jpg"} } }    
                           
                         }  
        } 
                     
        object{pool}   

}


#declare pool2 = 
union{
        intersection{
                object{basedif2} 
                box {
                            <-1, -1,   -1>,  // Near lower left corner
                            < 1, 5,  0>   // Far upper right corner    
                            translate z*1.03
                            texture { pigment { image_map {"water.jpg"} } }    
                           
                         }  
                        
                                            
        } 
                     
        object{pooll}   

} 

#declare cascata = 
union{  
//estrutura
        box {
                <-1, -1,   -1>,
                < 1, 5,  0> 
                translate z*1.03 
                texture {T_Grnt29}
        }
        
        box {
                <-1, 5, -1.5>,
                < 1, 5.6,  1> 
                texture {T_Grnt29}
        }

//água caindo
        box {
                <-1, -1,   -1.5>,
                < 1, 5,  -1.45> 
                translate z*0
                texture { pigment { image_map {"waterfall.png"} scale 2} } 
        } 
        
        rotate y*40
} 