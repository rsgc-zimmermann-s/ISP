class Donut {

  int x = 0; //Horizontal position

  int y = 0; //Vertical position

  int colour = 0;

  float diameter = 0; //sets size of ellipse

  int expansionRate = 1; //sets rate of expansion


    //Constructor  
  Donut(int xPassed, int yPassed, int expansionRatePassed) {

    colour = int(random(361));

    y = yPassed;
    x = xPassed;

    expansionRate = expansionRatePassed;
  }

  //Responsible for drawing the ellipse
  float update(float currentAmplitude) {


    noStroke();

    //drawing ellipse
    ellipse(x, y, diameter, diameter);

    diameter = diameter + 1 * currentAmplitude;

    //reports the donut's diameter
    return diameter;
  }
}
