/* • Draws  one  face  and  20  random  sized,  colored  and  positioned  circles  on  
the  screen.  No  circle  should  have  a  width  of  less  than 10  pixels  or  greater  
than  50  pixels.
• The  face  should  be  "modeled"  using  a  class,  that  is,  you  must  write  a  Face  
class  and  create  a  Face  object.
• The  20  circles  must  be  stored  in  an  array  and  if  you  wish  you  can  use  a  
Circle  class  to  model  them  (but  it's  not  compulsory)
• The  face  should  follow  the  mouse  pointer  around  the  screen.
• All  circles  can  be  moved  (as  a  group)  using  the  up/down/left/right  arrow  
keys. */ 
Circle myCircle;

void setup(){
  size(700, 700);
  background(155);
  
  myCircle = new Circle();
}

void draw() {
    myCircle.paint();
}