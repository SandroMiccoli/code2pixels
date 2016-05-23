/* //<>// //<>//
 Persuit Curve for any regular polygon
 */

color[] pantone2016 = 
  {
  #f7cac9, #f7786b, #91a8d0, #004d8c, #fbe337, 
  #98ddde, #9896a4, #dc443a, #b18f6a, #71cc51
};

boolean cw=true; // clockwise

ArrayList<MiceProblem> m;
float a[]={0, 30, 60, 90, 300, 360, 420};
int padding=40;

void setup() {
  size(800, 800);
  background(pantone2016[1]);
  stroke(44);
  strokeWeight(1.2);
  strokeCap(SQUARE);
  //blendMode(DIFFERENCE);

  m = new ArrayList<MiceProblem>();

  // Adds several triangles as individual mp's
  for (float a=0; a<=TWO_PI; a+=TWO_PI/6) {
    int r=350; // radius
    MiceProblem mp = new MiceProblem();
    mp.addParticle(0+cos(a)*r, 0+sin(a)*r, 1.2);
    mp.addParticle(0+cos(a+TWO_PI/6)*r, 0+sin(a+TWO_PI/6)*r, 1.2);
    mp.addParticle(0, 0, 1.2);
    m.add(mp);
  }

}

void draw() {
  if (frameCount%5==0 || frameCount==1) {
    for (MiceProblem p : m) {
      p.drawCenterRotated(0);

    }
  }

  if (cw) {
    for (MiceProblem p : m) {
      p.followCw();
    }
  } else {
    for (MiceProblem p : m) {
      p.followCcw();
    }
  } 

  //if ((frameCount+50)%100==0)
  //  cw=!cw;
  //m.get(0).move();
}




void mousePressed() {
  //m.clear();
  //polygon(0, 0, 350, 4); // creates particles
  cw=!cw;
}