//Stuart Zimmermann
//ISP
//Audio Visualiser
//Wednesday, April 15, 2015

int x = 0;
float position = 1;

import processing.sound.*;

SoundFile file;

Amplitude amp; 

float currentAmplitude = 0;

void setup() {
  size(700, 700); //Set the size of the canvas
  colorMode(HSB, 360, 100, 100); //using HSB colours

  file = new SoundFile (this, "Sierra Leone copy.mp3");

  file.play();

  amp = new Amplitude(this);
  amp.input(file);
}

void draw() {
  currentAmplitude = amp.analyze();
  background(352, 100, 100);
  fill(172, 100, 100);
  noStroke();
  ellipse(width/2, height/2, currentAmplitude * width, currentAmplitude * height);
  //position = position * random(position);
}
