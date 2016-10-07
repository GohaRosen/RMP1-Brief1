Face myFace;   //Initialise  face

Circle[] allCircles = new Circle[20];  //create array to store all my circles in

import ddf.minim.*;   //import library so I can play a sound

Minim minim; //loading the class
AudioPlayer sound;  //instance of my player
AudioPlayer click; //instance of my player

void setup(){
  size(700, 700); //size of the screen
  background(155);  //set up background colour
  minim = new Minim(this); //this will load the files from data folder
  sound = minim.loadFile("Bubbles.mp3");  //assigning a file to my player (loading mp3)
  click = minim.loadFile("alert.mp3");    //assigning a file to my player (loading mp3)
  
  
  for (int i = 0; i < 20; i++)  //loop through the array and create space for 20 new circles 
  {
    allCircles[i] = new Circle();
  }
  myFace = new Face();    //create a face
}


void draw() {
    background(155); //set background colour to make sure I only have one face at a time 
    
     for(int c=0; c<20; c++){   //loop through the array and draw 20 new circles 
       allCircles[c].paint();
      }
      
     myFace.paint(mouseX, mouseY); //tie down the face to mouse coordinates
    
      if(keyCode == UP && keyPressed == true){     //move all 20 circles up
        sound.rewind(); //set the play head to the begining
        sound.play();   //play (play just once)
        for(int p=0; p<20; p++){
          allCircles[p].yPos -= 1;
        }
      }
      if(keyCode == DOWN && keyPressed == true){     //move all 20 circles down
        sound.rewind(); //set the play head to the begining
        sound.play();   //play (play just once)
        for(int p=0; p<20; p++){
          allCircles[p].yPos += 1;
        }
      }
      if(keyCode == LEFT && keyPressed == true){       //move all 20 circles left
        sound.rewind(); //set the play head to the begining
        sound.play();   //play (play just once)
        for(int p=0; p<20; p++){
          allCircles[p].xPos -= 1;
        }
      }
      if(keyCode == RIGHT && keyPressed == true){      //move all 20 circles right
        sound.rewind(); //set the play head to the begining
        sound.play();   //play (play just once)
        for(int p=0; p<20; p++){
          allCircles[p].xPos += 1;
        }
      }
}

void mousePressed(){
   click.rewind();  //set the mp3 to the beginning so it can play
   click.play();  //play the sound
}