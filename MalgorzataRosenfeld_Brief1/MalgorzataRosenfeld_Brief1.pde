//Initialise  face
Face myFace;

//create array to store all my circles in
Circle[] allCircles = new Circle[20];

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
        for(int p=0; p<20; p++){
          allCircles[p].yPos -= 1;
        }
        sound.rewind();  //set the mp3 to the beginning so it can play
        sound.play();  //play the sound
      }
      if(keyCode == DOWN && keyPressed == true){     //move all 20 circles down
        for(int p=0; p<20; p++){
          allCircles[p].yPos += 1;
        }
        sound.rewind();  //set the mp3 to the beginning so it can play
        sound.play();  //play the sound
      }
      if(keyCode == LEFT && keyPressed == true){       //move all 20 circles left
        for(int p=0; p<20; p++){
          allCircles[p].xPos -= 1;
        }
        sound.rewind();  //set the mp3 to the beginning so it can play
        sound.play();  //play the sound
      }
      if(keyCode == RIGHT && keyPressed == true){      //move all 20 circles right
        for(int p=0; p<20; p++){
          allCircles[p].xPos += 1;
        }
        sound.rewind();  //set the mp3 to the beginning so it can play
        sound.play();  //play the sound
      }
 
}

void mousePressed(){
   click.rewind();  //set the mp3 to the beginning so it can play
   click.play();  //play the sound
}