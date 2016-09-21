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
    triangle(10, 20, 40 , 20, 25, 35); 
    triangle(60, 20, 90 , 20, 75, 35); 
    
    popMatrix();
  }
}
  
    