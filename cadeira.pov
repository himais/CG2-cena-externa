//=========================================
// Easy chair that can be more or less folded
// A striped texture is assigned to the fabric
// Used in "Vacancy".
// -----------------------------------------
// Made for Persistence of vision 3.6
//==========================================  
// Copyright 1997-2004 Gilles Tran http://www.oyonale.com
// -----------------------------------------
// This work is licensed under the Creative Commons Attribution License. 
// To view a copy of this license, visit http://creativecommons.org/licenses/by/2.0/ 
// or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.
// You are free:
// - to copy, distribute, display, and perform the work
// - to make derivative works
// - to make commercial use of the work
// Under the following conditions:
// - Attribution. You must give the original author credit.
// - For any reuse or distribution, you must make clear to others the license terms of this work.
// - Any of these conditions can be waived if you get permission from the copyright holder.
// Your fair use and other rights are in no way affected by the above. 
//==========================================  
#macro MakeEasyChair(angleChair,C_Chair,C_Fabric_1,C_Fabric_2,C_Fabric_3)
/*                                                                           
#declare angleChair=10;                 // folding angle (between 10 and 13)
#declare C_Chair=rgb<1,0.8,0.6>*0.8;   // Wood frame color
#declare C_Fabric_1=Red;               // fabric stripes colors
#declare C_Fabric_2=Red;
#declare C_Fabric_3=Red;
*/
//-----------------------------------------
// textures
//-----------------------------------------
// Striped fabric texture
//-----------------------------------------
#local T_Fabric=texture{
        pigment{
                gradient x
                color_map{
                        [0.0 color C_Fabric_1]
                        [0.2 color C_Fabric_1]
                        [0.2 color Black]
                        [0.4 color Black]
                        [0.4 color C_Fabric_2]
                        [0.6 color C_Fabric_2]
                        [0.6 color C_Fabric_3]
                        [0.8 color C_Fabric_3]
                        [0.8 color C_Fabric_1]
                        [1 color C_Fabric_1]
                }
        }
        finish{ambient 0.1 specular 0.01 roughness 0.1}
}     
//-----------------------------------------
// wood texture
//-----------------------------------------
#local T_Chair=texture{
         pigment{
                 wood
                 turbulence 0.2
                 color_map{
                 [0.4 color C_Chair]
                 [0.5 color C_Chair*0.8]
                 [0.6 color C_Chair*1.1]
                 }
         }
         finish{ambient 0 diffuse 0.6}
         scale 1/3
         rotate 45
}
//-----------------------------------------
// chair frame parameters
//-----------------------------------------
#local lBar1=15;    // rod length 1
#local lBar2=14;    // rod length 2
#local lBar3=6;     // connecting rod length 3
#local rBar=0.2;    // rod radius
#local eBar=0.1;    // connecting rod radius
#local xChair=5;        // chair width
#local lM1=0.7;         // crossing position for rod 1
#local lM2=0.7;         // crossing position for rod 2
#local lM3=0.7;         // crossing position for rod 2 & 3
#local rtM1=angleChair; // angle
#local rtM2=degrees(asin(lM1*sin(radians(rtM1))/(1-lM2)));
#local rtM3=degrees(acos(lM2*lBar2*lM3*sin(radians(rtM1+rtM2))/lBar3)) +90 - rtM1 -rtM2;
#local yChair=sin(radians(rtM1))*lM1*lBar1; // Chair height
#local yPend=-yChair*0.6;                       // the fabric sags a little
#local Bar1=union{
         cylinder{z*lBar1*lM1,-z*lBar1*(1-lM1),rBar}
         sphere{z*lBar1*lM1,rBar}
         sphere{z*lBar1*(lM1-1),rBar}
         rotate x*rtM1
}
#local Bar2=union{
         cylinder{z*lBar2*lM2,-z*lBar2*(1-lM2),rBar}
         sphere{z*lBar2*lM2,rBar}
         sphere{z*lBar2*(lM2-1),rBar}
         rotate -x*rtM2
}
#local Transverse11 = cylinder{-x*xChair*0.5,x*xChair*0.5,rBar*0.8 translate z*lM1*lBar1*0.95 rotate x*rtM1}
#local Transverse12 = cylinder{-x*xChair*0.5,x*xChair*0.5,rBar*0.8 translate -z*(1-lM1)*lBar1*0.95 rotate x*rtM1}
#local Transverse21 = cylinder{-x*(xChair*0.5+2*rBar+2*eBar),x*(xChair*0.5+2*rBar+2*eBar),rBar*0.8 translate z*lM2*lBar2*0.95 rotate -x*rtM2}
#local Transverse22 = cylinder{-x*(xChair*0.5+2*rBar+2*eBar),x*(xChair*0.5+2*rBar+2*eBar),rBar*0.8 translate -z*(1-lM2)*lBar2*0.95 rotate -x*rtM2}
#local Bar3=union{
         cylinder{0,-z*lBar3,rBar}
         sphere{0,rBar}
         sphere{-z*lBar3,rBar}
         rotate x*-rtM3
         translate z*lM2*lBar2*lM3
         rotate x*-rtM2
         scale <eBar/rBar,1,1>
}                                                                          
//-----------------------------------------
// fabric bezier patch
//-----------------------------------------
#local TL11=vrotate(<-xChair/2,0,lM2*lBar2*0.95>,-rtM2*x);
#local TL12=TL11 + x*xChair/3;
#local TL13=TL11 + x*2*xChair/3;
#local TL14=TL11 + x*xChair;
#local TL21=vrotate(<-xChair/2,yPend*1.5,lM2*lBar2*0.2>,-rtM2*x);
#local TL22=TL21 + x*xChair/3;
#local TL23=TL21 + x*2*xChair/3;
#local TL24=TL21 + x*xChair;
#local TL31=vrotate(<-xChair/2,yPend*0.3,(lM1-1)*lBar1*0.5>,rtM1*x);
#local TL32=TL31 + x*xChair/3;
#local TL33=TL31 + x*2*xChair/3;
#local TL34=TL31 + x*xChair;
#local TL41=vrotate(<-xChair/2,0,(lM1-1)*lBar1*0.95>,rtM1*x);
#local TL42=TL41 + x*xChair/3;
#local TL43=TL41 + x*2*xChair/3;
#local TL44=TL41 + x*xChair;

#local Fabric=union{
        cylinder{TL11,TL14,rBar*1.01}
        cylinder{TL41,TL44,rBar*1.01}
        bicubic_patch{
                type 1    flatness 0.1   u_steps 3   v_steps 3
                TL11, TL12, TL13, TL14,TL21, TL22, TL23, TL24, TL31, TL32, TL33, TL34, TL41, TL42, TL43, TL44
        }
        texture{T_Fabric scale xChair/2 translate -x*xChair}
        scale <(xChair-rBar*1.1)/xChair,1,1>
}

//-----------------------------------------
// chair building
//-----------------------------------------
union{
        object{Fabric}
        object{Transverse11}
        object{Transverse12}
        object{Transverse21}
        object{Transverse22}
        union{
                object{Bar1}
                object{Bar2 translate -x*2*(rBar+eBar)}
                object{Bar3 translate -x*(rBar+eBar)}
                translate -x*xChair/2
        }
        union{
                object{Bar1}
                object{Bar2 translate x*2*(rBar+eBar)}
                object{Bar3 translate x*(rBar+eBar)}
                translate x*xChair/2
        }
        texture{T_Chair}
        translate y*(yChair+rBar)
}
#end


//=========================================
// Examples
//-----------------------------------------
#include "colors.inc"
#declare PdV=<2, 10 , -64>;
#declare PdA=<2,3.7,0>;
/*camera {location  PdV  direction 7*z up y right 4/3 look_at PdA}
light_source { PdV color White*0.3}
light_source{<-450,1000,-1000> color White*2}  

#declare C_Chair=rgb<1,0.8,0.6>*0.8;      

object{MakeEasyChair(10,C_Chair,Yellow,SkyBlue,Red) rotate y*60}

plane{y,0 texture{pigment{Yellow}}}
plane{z,30 texture{pigment{White*2}}}     */