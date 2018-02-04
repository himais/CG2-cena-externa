#include "colors.inc"    
#include "woods.inc" 
#include "stones.inc "
#include "porta.pov"    
#include "metals.inc"
#include "stones1.inc" 
#include "textures.inc"

/*
camera {
  location <0,0,-10>
  angle 36
}  

camera { 
     location <0, 3, -7>        
     look_at <0, 2, 2>   

}
 
 
background { 
        LightSteelBlue 
}

light_source { 
        <500,500,-1000> color White
}
  
plane {
  y, 0   
  pigment { 
        checker Green White 
        }
}  */ 
   
//-------------------------------------------------------------------------------------// 

#declare guardasol = 
union{ 
        cone {
            <0, 1, 0>, 0    // Center and radius of one end
            <0, 0, 0>, 2    // Center and radius of other end
            pigment{White}
            translate y*2
          } 
          
        cylinder {
            <0, 0, 0>,     // Center of one end
            <0, 0.1, 0>,     // Center of other end
            2            // Remove end caps
            pigment{White} 
            translate y*1.9
          } 
          
        cylinder {
            <0, 0, 0>,     // Center of one end
            <0, 2, 0>,     // Center of other end
            0.08            // Remove end caps
            pigment{LightWood}
          }
                  
          translate y*0.3 
} 

//-------------------------------------------------------------------------------------// 
  
  
//object{guardasol} 
            
 