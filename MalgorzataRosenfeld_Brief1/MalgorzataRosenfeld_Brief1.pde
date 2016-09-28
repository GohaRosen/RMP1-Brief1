/*-----DONE  • Draws  one  face  and  20  random  sized,  colored  and  positioned  circles  on  
the  screen.  No  circle  should  have  a  width  of  less  than 10  pixels  or  greater  
than  50  pixels.----
-----DONE • The  face  should  be  "modeled"  using  a  class,  that  is,  you  must  write  a  Face  
class  and  create  a  Face  object.-----
• The  20  circles  must  be  stored  in  an  array  and  if  you  wish  you  can  use  a  
Circle  class  to  model  them  (but  it's  not  compulsory)
------DONE  • The  face  should  follow  the  mouse  pointer  around  the  screen. ----
• All  circles  can  be  moved  (as  a  group)  using  the  up/down/left/right  arrow  
keys. */ 


//Initialise  face
Face myFace;

//create array to store all my circles in
Circle[] allCircles = new Circle[20];


void setup(){
  size(700, 700); //size of the screen
  background(155);  //set up background colour
  
  for (int i = 0; i < 20; i++)
  {
    allCircles[i] = new Circle();
  }
 
 
  
  myFace = new Face(); 

 
  
}


void draw() {
    background(155); //set background colour to make sure I only have one face at a time 
    
     for(int c=0; c<20; c++){
       
       allCircles[c].paint();
     
     }
    
   
    myFace.paint(mouseX, mouseY); //tie down the face to mouse coordinates
 
}