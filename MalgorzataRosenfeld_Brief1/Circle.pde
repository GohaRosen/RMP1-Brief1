//set up class and its attributes 
class Circle{
  float xPos;
  float yPos;
  float cWidth;
  float cRed;
  float cGreen;
  float cBlue;
  
  //set up circle position, radies and colour
  Circle(){
    xPos = random(50,600);
    yPos = random(50,600);
    cWidth = random(10,50);
    cRed = random(0,255);
    cGreen = random(0,255);
    cBlue = random(0,255);
  }
  
  //set up paint function 
    void paint() {
    fill(cRed, cGreen, cBlue);
    ellipse(xPos, yPos, cWidth, cWidth);
    noStroke();
    noFill();
  }
}