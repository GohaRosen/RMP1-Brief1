class Circle{
  float xPos;
  float yPos;
  float cWidth;
  float cRed;
  float cGreen;
  float cBlue;
  
  Circle(){
    xPos = random(50,600);
    yPos = random(50,600);
    cWidth = random(10,50);
    cRed = random(0,255);
    cGreen = random(0,255);
    cBlue = random(0,255);
  }
  
    void paint() {
    fill(cRed, cGreen, cBlue);
    ellipse(xPos, yPos, cWidth, cWidth);
    noFill();
  }
}