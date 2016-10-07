//set up face class
class Face{
  
  
  void paint(){
    paint(0, 0);
  }
  
  //set up paint function 
  void paint(int xPos, int yPos){
    
    pushMatrix();
    
    translate(xPos, yPos);
    fill(46, 139, 87);                                 //fill colour of the face
    ellipse(0, 0, 100, 100);                           //face
    fill(0);                                           //fill colour of eyes and nose 
    triangle(-20, -30, -10 , -30, -15, -20);           //eye no.1
    triangle(20, -30, 10 , -30, 15, -20);              //eye no.2 
    ellipse(0, -10, 5, 5);                             //nose
    fill(178,21,21);                                   //fill colour of the mouth
    arc(-20,2,30,20,QUARTER_PI, PI+QUARTER_PI);        //mouth
    
    
    popMatrix();
  }
}