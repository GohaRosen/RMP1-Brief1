class Circle{
  float xPos;
  float yPos;
  float cWidth;
  int cRed;
  int cGreen;
  int cBlue;
  
  Circle(){
    xPos = 50;
    yPos = 50;
    cWidth = 20;
    cRed = 255;
    cGreen = 0;
    cBlue = 0;
  }
  
    void paint() {
    fill(cRed, cGreen, cBlue);
    ellipse(xPos, yPos, cWidth, cWidth);
    noFill();
  }
}