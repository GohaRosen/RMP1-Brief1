class Face{
  
  
  void paint(){
    paint(0, 0);
  }
  
  void paint(int xPos, int yPos){
    
    pushMatrix();
    
    translate(xPos, yPos);
    fill(46, 139, 87);
    ellipse(0, 0, 100, 100);
    fill(0);
    triangle(-20, -30, -10 , -30, -15, -20); 
    triangle(20, -30, 10 , -30, 15, -20); 
    arc(-20,2,30,20,QUARTER_PI, PI+QUARTER_PI);
    ellipse(0, -10, 5, 5);
    
    
    popMatrix();
  }
}
  
    