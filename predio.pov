#include "colors.inc"    
#include "woods.inc" 
#include "stones.inc "
#include "porta.pov"    
#include "metals.inc"
#include "stones1.inc" 
#include "textures.inc" 
#include "plants1.inc" 



//andar
#declare andar = 
box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.1, 1> // Far upper right corner 
        	texture { pigment { image_map {"wall.jpg"} } } 
        	translate y*1  
        	
        	//rotate y*60
        }  

#declare andar2 = 
box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5.2, 0.1, 1> // Far upper right corner 
        	texture { pigment { image_map {"wall.jpg"} } } 
        	translate y*1  
        	
        	//rotate y*60
        } 
        
#declare andar3 = 
union{ 
        box { 
                <-0.1, 0, -1.4>,
                <5.1, 0.2, 1> 
                texture { pigment { image_map {"tile.jpg"}  }}
                translate y*1//rotate y*60
        }  
        
        box { 
        	<0, 0, 0>, // Near lower left corner 
        	<1, 0.8, -0.5> // Far upper right corner 
        	pigment{White}  
        	
        	//rotate y*60 
        	translate<0,1,0> 
        } 
        
        box { 
        	<0, 0, 0>, // Near lower left corner 
        	<1, 0.8, -0.5> // Far upper right corner 
        	pigment{White}  
        	
        	//rotate y*60 
        	translate<0,1,1> 
        }
        
        
}

//porta das sacadas        
#declare portasacada = 
object{ Window_3 ( 0, 0 ) // Window_Open_Right, Window_Open_Left,: 0= down closed; 1 = up opened  
        pigment {White}
        scale <0.6,0.8,1>
        rotate<0,0,0> 
        translate<0.5, -0.55, -1.05>} 

//sacadas
#declare sacada =  
union{ 
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<1.6, 0.8, -1.3> // Far upper right corner 
        	texture { pigment { image_map {"wall.jpg"} } }  
        	
        	//rotate y*60 
        	translate<1.7,0,0> 
        }  
            
            
           /*object{New_plant_1 scale 0.0003 translate<0.2, 0.1, -1.5>} 
            object{New_plant_1 scale 0.0003 translate<0.4, 0.1, -1.5>}
            object{New_plant_1 scale 0.0003 translate<0.6, 0.1, -1.5>}
            object{New_plant_1 scale 0.0003 translate<0.7, 0.1, -1.5>} 
            object{New_plant_1 scale 0.0003 translate<0.9, 0.1, -1.5>}
            object{New_plant_1 scale 0.0003 translate<1, 0.1, -1.5>}
            object{New_plant_1 scale 0.0003 translate<1.2, 0.1, -1.5>} 
            object{New_plant_1 scale 0.0003 translate<1.4, 0.1, -1.5>}  
            
            object{New_plant_1 scale 0.0003 translate<3.5, 0.1, -1.5>}
            object{New_plant_1 scale 0.0003 translate<3.6, 0.1, -1.5>}
            object{New_plant_1 scale 0.0003 translate<3.7, 0.1, -1.5>} 
            object{New_plant_1 scale 0.0003 translate<3.9, 0.1, -1.5>}
            object{New_plant_1 scale 0.0003 translate<4, 0.1, -1.5>}
            object{New_plant_1 scale 0.0003 translate<4.2, 0.1, -1.5>} 
            object{New_plant_1 scale 0.0003 translate<4.4, 0.1, -1.5>}
            object{New_plant_1 scale 0.0003 translate<4.7, 0.1, -1.5>}*/   
            
            
            
           
        
        object{andar} 
          
        //cerquinha
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,0.3,0.05>
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,0.3,0.05>  
        	rotate y*90 
        	translate<1.45,0,3.6> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,0.3,0.05>  
        	rotate y*90 
        	translate<6.4,0,3.6> 
        } 
        
        //porta         
        object{portasacada}
        object{portasacada translate<0.6,0,0> }           
        
        object{portasacada translate<4,0,0>}
        object{portasacada translate<3.4,0,0> }    
        
        translate y*1
        
        
        
}

#declare sacada2 =  
union{   

        //divisórias
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<1, 1, -1.3> // Far upper right corner 
        	texture {T_Wood10}  
        	
        	//rotate y*60  
        	scale x*0.3
        	translate<-0,0,0.4> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<2.2, 1, -1.3> // Far upper right corner 
        	texture {T_Wood10}  
        	
        	//rotate y*60  
        	scale x*0.3
        	translate<1.5,0,0.4> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<2.2, 1, -1.3> // Far upper right corner 
        	texture {T_Wood10}  
        	
        	//rotate y*60  
        	scale x*0.3
        	translate<3.05,0,0.4> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<1.2, 1, -1.3> // Far upper right corner 
        	texture {T_Wood10}  
        	
        	//rotate y*60  
        	scale x*0.3
        	translate<4.85,0,0.4> 
        } 
        
        //portas
        object{portasacada scale y*1.1 translate<0.1,0,0> } 
        object{portasacada scale y*1.1 translate<0.7,0,0> }         
        object{portasacada scale y*1.1 scale x*1.4 translate<1.9,0,0> }
        object{portasacada scale y*1.1 translate<3.5,0,0> } 
        object{portasacada scale y*1.1 translate<4.1,0,0> }
         
        //plantinhas
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5.2, 0.05, -1.4> // Far upper right corner 
        	pigment{ForestGreen}  
        	
        	//rotate y*60 
        	translate<0,0.055,0> 
        }
           
        
        object{andar2} 
          
        //cerquinha
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5.2, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,0.3,0.05>
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,0.3,0.05>  
        	rotate y*90 
        	translate<1.45,0,3.6> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,0.3,0.05>  
        	rotate y*90 
        	translate<6.4,0,3.6> 
        } 
                                                      
        
        translate y*1
        
        
        
}  

#declare sacada3 =  
union{           
        //object{andar2 scale x*0.5}  
                
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<3.5, 0.8, -1.3> // Far upper right corner 
        	pigment{White} 
        	
        	scale x*0.3
        	translate<0,1,0> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<2, 0.5, -1.3> // Far upper right corner 
        	pigment{White} 
        	
        	translate<0,1,0> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<2, 0.2, -0> // Far upper right corner 
        	pigment{White} 
        	
        	translate<0,1,0> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<2, 0.1, -0> // Far upper right corner 
        	pigment{White} 
        	
        	translate<0,2,0> 
        }        
          
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<1.6, 1, -1.4> // Far upper right corner 
        	pigment{White}
        	
        	rotate y*90 
        	translate<1.5,1,0> 
        }                                          
        
       // translate y*1 
        
        rotate y*180
        
        
        
} 

#declare planta = 
sphere{
              <0,0,0>,0.2 
              translate y*1
              translate x*0
              translate z*0.2
              texture { pigment { image_map {"green.jpg"} rotate y*90} normal { bumps 0.4 scale 0.2 } } 
              translate <0.5,-0.75,-1.3> 
              
        } 

#declare predio1 = 
union{  
        
        //predio  
        box { 
        	<0, 0, -1>, // Near lower left corner 
        	<5, 5, 3> // Far upper right corner 
        	pigment{White}  
        	finish { diffuse 0.9 phong 0.1}
        	
        	//rotate y*60
        }  
        
        
        //parede direita
        box { 
        	<0, 0, -1>, // Near lower left corner 
        	<0.05, 5.2, 3> // Far upper right corner 
        	pigment{White}  
        	
        	//rotate y*60 
        	translate x*-0.1
        	translate z*-0.2
        	
        }
 

        //sacadas 
        object{andar}
        object{sacada} 
        object{sacada translate <0,1,0> }
        object{sacada translate <0,2,0>}
        object{sacada translate <0,3,0>} 
        object{andar translate <0,4,0>} 
        object{andar3 translate <0,4.1,0>}
         
        //coluna
        cylinder { 
        	<0, 4, 0>, // Center of one end 
        	<0, 0, 0>, // Center of other end 
        	0.1 // Radius 
        	texture {T_Stone15} 
        	translate <2.5,0,-1.4>  
        	translate y*1
        } 
        
        //porta terreo 
        object{portasacada scale x*2 translate<-0.2,0,0>}
        object{portasacada scale x*2 translate<1,0,0>} 
        object{portasacada scale x*2 translate<2.2,0,0>}
        object{portasacada scale x*2 translate<3.2,0,0>}
        //object{portasacada translate<0.6,0,0>} 
        //object{portasacada translate<1.2,0,0>}
        
        //plantas terreo
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.3, -1.3> // Far upper right corner 
        	texture { pigment { image_map {"green.jpg"} } }
        	
        	translate<0,0,0.05>
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.3, -1.3> // Far upper right corner 
        	texture { pigment { image_map {"green.jpg"} rotate y*90 } }
        	
        	translate<0,0,0.05>  
        	rotate y*90 
        	translate<1.45,0,3.6> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.3, -1.3> // Far upper right corner 
        	texture { pigment { image_map {"green.jpg"} rotate y*90} } 
        	
        	translate<0,0,0.05>  
        	rotate y*90 
        	translate<6.4,0,3.6> 
        }
        
        
        object{planta}  
        object{planta translate x*0.5}
        object{planta translate x*3.6} 
        object{planta translate x*4.1}  
        
        

        translate <-2,0,0>   
        //rotate y*60 
   }  
   
#declare predio2 = 
union{  
        
        //predio  
        box { 
        	<0, 0, -1>, // Near lower left corner 
        	<5, 6, 3> // Far upper right corner 
        	pigment{White} 
        	finish { diffuse 0.9 phong 0.1} 
        	
        	//rotate y*60
        } 
 

        //sacadas 
        object{andar}
        object{sacada} 
        object{sacada translate <0,1,0> }
        object{sacada translate <0,2,0>}
        object{sacada translate <0,3,0>} 
        object{andar translate <0,4,0>}  
        object{andar translate <0,5,0>} 
        object{andar3 translate <0.2,5.1,0>}
        
        //porta cobertura
        object{portasacada scale x*2 translate<-0.2,5,0>}
        object{portasacada scale x*2 translate<1,5,0>} 
        object{portasacada scale x*2 translate<2.2,5,0>}
        object{portasacada scale x*2 translate<3.2,5,0>}  
        
        //cerquinha cobertura
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,5.3,0.05>
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,0.3,0.05>  
        	rotate y*90 
        	translate<1.45,5,3.6> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,0.3,0.05>  
        	rotate y*90 
        	translate<6.4,5,3.6> 
        }  
        
        //plantas terreo
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.3, -1.3> // Far upper right corner 
        	texture { pigment { image_map {"green.jpg"} } }
        	
        	translate<0,0,0.05>
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.3, -1.3> // Far upper right corner 
        	texture { pigment { image_map {"green.jpg"} rotate y*90 } }
        	
        	translate<0,0,0.05>  
        	rotate y*90 
        	translate<1.45,0,3.6> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5, 0.3, -1.3> // Far upper right corner 
        	texture { pigment { image_map {"green.jpg"} rotate y*90} } 
        	
        	translate<0,0,0.05>  
        	rotate y*90 
        	translate<6.4,0,3.6> 
        }
         
        //coluna
        cylinder { 
        	<0, 4, 0>, // Center of one end 
        	<0, 0, 0>, // Center of other end 
        	0.1 // Radius 
        	texture {T_Stone15} 
        	translate <2.5,0,-1.4>  
        	translate y*1
        } 
        
        //porta terreo 
        object{portasacada scale x*2 translate<-0.2,0,0>}
        object{portasacada scale x*2 translate<1,0,0>} 
        object{portasacada scale x*2 translate<2.2,0,0>}
        object{portasacada scale x*2 translate<3.2,0,0>}
        //object{portasacada translate<0.6,0,0>} 
        //object{portasacada translate<1.2,0,0>} 
        
        object{planta}  
        object{planta translate x*0.5}
        object{planta translate x*3.6} 
        object{planta translate x*4.1}

        translate <-2,0,0>   
        //rotate y*60 
   } 
   
#declare predio3 = 
union{  
        
        //predio  
        box { 
        	<0, 0, -1>, // Near lower left corner 
        	<1.5, 3, 3> // Far upper right corner 
        	pigment{White}  
        	finish { diffuse 0.9 phong 0.1}
        	
        	//rotate y*60
        }
        
         box { 
        	<0, 0, -1>, // Near lower left corner 
        	<0.2, 3, 3> // Far upper right corner 
        	texture {T_Wood10} 
        	translate <1.3,0,-0.2>
        	
        	//rotate y*60
        } 
        
        
        box { 
        	<0, 0, -1>, // Near lower left corner 
        	<0.35, 3, 3> // Far upper right corner 
        	texture {T_Wood10} 
        	translate <0.3,0,-0.2>
        	
        	//rotate y*60
        }   
         
        difference{ 
                //sacadas 
                union{
                        object{sacada}     
                        object{sacada translate y*-1} 
                        object{sacada translate y*1} 
                        object{andar translate <0,2,0>}
                        object{andar3 translate <0.2,2.1,0>} 
                }
                
                box { 
                	<0, 0, -1>, // Near lower left corner 
                	<4, 4, 4> // Far upper right corner 
                	pigment{White}  
                	
                	//rotate y*60 
                	translate <1.5,0,-2>
                } 
        }
        

        translate <-2,2,0>   
        //rotate y*60 
   } 
   
#declare predio4 = 
union{  
        
        //predio
         box { 
        	<0, 0, -1>, // Near lower left corner 
        	<5.2, 6, 3> // Far upper right corner 
        	pigment{White}
        	finish { diffuse 0.9 phong 0.1}  
        	
        	//rotate y*60
        }   
        
        object{andar}
        object{sacada2} 
        object{sacada2 translate <0,1,0> }
        object{sacada2 translate <0,2,0>}
        object{sacada2 translate <0,3,0>}
        object{sacada2 translate <0,4,0>}
        object{andar2 scale x*0.5 translate <0,5,0>} 
        object{andar3 translate <0.1,5.1,0>} 
        
        union{ 
                object{sacada3} 
                object{sacada3 translate <0,1,0> }
                object{sacada3 translate <0,2,0>}
                object{sacada3 translate <0,3,0>}
                object{sacada3 translate <0,4,0>}
                rotate y*90
                translate x*4.5
                translate z*0.5
        } 
        
        
        translate <-2,0,0>   
        //rotate y*60 
   } 
   
#declare predio5 = 
union{  
        
        //predio
         box { 
        	<0, 0, -1>, // Near lower left corner 
        	<6, 1.3, 3> // Far upper right corner 
        	pigment{White} 
        	finish { diffuse 0.9 phong 0.1} 
        	
        	//rotate y*60
        } 
        
        box { 
        	<0, 0, -1>, // Near lower left corner 
        	<6, 0.19, 3> // Far upper right corner 
        	pigment{White}
        	translate y*1.4 
        	translate z*-0.15 
        	texture { pigment { image_map {"tile2.jpg"} rotate x*90 } } 
        	finish { diffuse 0.9 phong 0.1} 
        	
        	//rotate y*60
        } 
        
        box { 
        	<0, 0, -1>, // Near lower left corner 
        	<5.5, 0.2, 3> // Far upper right corner 
        	pigment{MediumTurquoise}
        	translate y*0.5 
        	translate x*0.2 
        	translate z*-0.1  
        	
        	//rotate y*60
        } 
         
        //portas
        object{portasacada scale <2, 1.5, 0> translate<-0.3,0,0>}
        object{portasacada scale <2, 1.5, 0> translate<0.9,0,0>} 
        object{portasacada scale <2, 1.5, 0> translate<2.1,0,0>}
        object{portasacada scale <2, 1.5, 0> translate<3.3,0,0>}  
        object{portasacada scale <2, 1.5, 0> translate<4.35,0,0>}      
                                                                  
        /*                                                          
        //cobertura
        //cerquinha cobertura
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5.6, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0.2,1.8,0.05>
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5.6, 0.4, -1.46> // Far upper right corner 
        	texture{Glass} 
        	
        	translate<0.2,1.4,0.1>
        } 
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5.6, 0.4, -1.46> // Far upper right corner 
        	texture{Glass} 
        	
        	translate<0.2,1.5,0.1>
        	rotate y*90 
        	translate<1.75,0,4.2> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<5.6, 0.4, -1.46> // Far upper right corner 
        	texture{Glass} 
        	
        	translate<0.2,1.5,0.1>
        	rotate y*90 
        	translate<7,0,4.2> 
        }
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<6, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,0.3,0.05>  
        	rotate y*90 
        	translate<2.15,1.8,3.6> 
        } 
        
        box { 
        	<0, 0, -1.5>, // Near lower left corner 
        	<6, 0.02, -1.46> // Far upper right corner 
        	pigment{White}  
        	
        	translate<0,0.3,0.05>  
        	rotate y*90 
        	translate<6.7,1.8,3.6> 
        }  */  
        

        translate <-1,0,0>   
        //rotate y*60 
   }  
   
   
//-------------------------------------------------------------------------------------// 


//object{predio1 scale y*0.9}  

//object{predio2 scale y*0.9} 

//object{predio3 scale y*0.9} 

//object{predio4 scale y*0.9} 

//object{predio5 scale y*0.9} 

//object{sacada3}

 
            
 