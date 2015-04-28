 //Stuart Zimmermann
//ISP
//Audio Visualiser
//Wednesday, April 15, 2015

float x = 0;
float position = 1;

import processing.sound.*; //Import sound file

SoundFile file;

Amplitude amp; 

float currentAmplitude = 0;

//create the canvas
void setup() {
  size(700, 700); //Set the size of the canvas
  colorMode(HSB, 360, 100, 100); //using HSB colours

  file = new SoundFile (this, "Sierra Leone copy.mp3"); //the audio file that is analyzed

  file.play(); //plays audio file  

  amp = new Amplitude(this);
  amp.input(file); //uses the amp input from audio file
  
  background(352, 100, 100, 10); //

}

void draw() {
  currentAmplitude = amp.analyze() * 15; //analyzes the audio file
  fill(172, 100, 100);
  noStroke();
  ellipse(width/2, height/2, width/25 + x, height/25 + x);
  //position = position * random(position);
  x = x + 1 * currentAmplitude;
}
