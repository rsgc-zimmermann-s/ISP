//Stuart Zimmermann
//ISP
//Audio Visualiser
//Wednesday, April 15, 2015

Donut donut1;
Donut donut2;
Donut donut3;

int screensize;

import processing.sound.*; //Import sound file

SoundFile file;

Amplitude amp; 

float currentAmplitude = 0;

//create the canvas
void setup() {
  size(700, 700); //Set the size of the canvas
  colorMode(HSB, 360, 100, 100); //using HSB colours

  float w = width;
  float h = height;

  screensize = int(sqrt(w*w+h*h))+2;

  donut1 = new Donut(width/2, height/2, 1);
  donut2 = new Donut(width/2, height/2, 1);
  donut3 = new Donut(width/2, height/2, 1);

  //the audio file that is analyzed
  file = new SoundFile (this, "1.mp3");

  file.play(); //plays audio file  

  amp = new Amplitude(this);
  amp.input(file); //uses the amp input from audio file

    background(114, 100, 30); //
}

void draw() {

  currentAmplitude = amp.analyze() * 30; //analyzes the audio file

    fill(274, 100, 100);
  if (donut1.update(currentAmplitude) > 100) {
    if (donut2.update(currentAmplitude) > screensize) {
      donut2.diameter = 0;
      donut2.colour = int(random(361));
    }
    if (donut2.diameter < screensize) {
      donut2.update(currentAmplitude);
    }
  }

  fill(120, 100, 100);
  if (donut2.update(currentAmplitude) > 100) {
    if (donut3.update(currentAmplitude) > screensize) {
      donut3.diameter = 0;
      donut3.colour = int(random(361));
    }
    if (donut3.diameter < screensize) {
      donut3.update(currentAmplitude);
    }
  }

    fill(360, 100, 100);
  if (donut3.update(currentAmplitude) > 100) {
    if (donut1.update(currentAmplitude) > screensize) {
      donut1.diameter = 0;
      donut1.colour = int(random(361));
    }
    if (donut1.diameter < screensize) {
      donut1.update(currentAmplitude);
    }
  }
}
