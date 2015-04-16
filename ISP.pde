//Stuart Zimmermann
//ISP
//Audio Visualiser
//Wednesday, April 15, 2015

int x = 0;
float position = 1;

void setup() {
  size(700, 700); //Set the size of the canvas
  colorMode(HSB, 360, 100, 100); //using HSB colours
}

void draw() {
  background(352, 100, 100);
  fill(172, 100, 100);
  noStroke();
  ellipse(width/2, height/2, 10 + x, 10 + x);
  x = x + 1;
  //position = position * random(position);
}
