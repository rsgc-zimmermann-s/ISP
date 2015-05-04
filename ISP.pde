//Stuart Zimmermann
//ISP
//Audio Visualiser
//Wednesday, April 15, 2015

Donut donut1;
Donut donut2;
Donut donut3;



import processing.sound.*; //Import sound file

SoundFile file;

Amplitude amp; 

float currentAmplitude = 0;

//create the canvas
void setup() {
  size(700, 700); //Set the size of the canvas
  colorMode(HSB, 360, 100, 100); //using HSB colours

  donut1 = new Donut(width/2, height/2, 1);
  donut2 = new Donut(width/2, height/2, 1);
  donut3 = new Donut(width/2, height/2, 1);

  //the audio file that is analyzed
  file = new SoundFile (this, "Effeil 65- Blue (KNY Factory Remix).mp3");

  file.play(); //plays audio file  

  amp = new Amplitude(this);
  amp.input(file); //uses the amp input from audio file

    background(352, 100, 100, 10); //
}

void draw() {

  currentAmplitude = amp.analyze() * 15; //analyzes the audio file

  if (donut1.update(currentAmplitude) > 100) {
    donut2.update(currentAmplitude);
  }

  // donut3.update(currentAmplitude);
}
