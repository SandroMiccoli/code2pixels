/* //<>// //<>// //<>//
  Persuit Curve for any regular polygon
 */

color[] pantone2016 = 
  {
  #f7cac9, #f7786b, #91a8d0, #004d8c, #fbe337, 
  #98ddde, #9896a4, #dc443a, #b18f6a, #71cc51
};

ArrayList<Particle> m = new ArrayList<Particle>();

int padding=40;

void setup() {
  size(800, 800);
  background(pantone2016[0]);
  stroke(pantone2016[3]);
  strokeWeight(1.4);

  polygon(0, 0, 350, 6); // creates particles

  drawCenterRotated();
  //noLoop();
}

void draw() {
  if (frameCount%5==0) {
    drawCenterRotated();
  }

  followNext(m);
  //m.get(0).move();
}

void drawCenterRotated() {
  pushMatrix();
  translate(width/2, height/2);
  rotate(PI/6);
  drawLines(m);
  popMatrix();
}

// follows next element in array
// (last element follows first)
void followNext(ArrayList<Particle> p) {
  for (int i=0; i<p.size()-1; i++) {
    p.get(i).follow(p.get(i+1));
  }
  p.get(p.size()-1).follow(p.get(0));
}

void followPrevious(ArrayList<Particle> p) {

  p.get(0).follow(p.get(p.size()-1));
  for (int i=p.size()-1; i>0; i--) {
    p.get(i).follow(p.get(i-1));
  }
}

// draw lines from each element to the next
// (last element connects to first first)
void drawLines(ArrayList<Particle> p) {
  for (int i=0; i<p.size()-1; i++) {
    line(p.get(i).pos.x, p.get(i).pos.y, p.get(i+1).pos.x, p.get(i+1).pos.y);
  }
  line(p.get(p.size()-1).pos.x, p.get(p.size()-1).pos.y, p.get(0).pos.x, p.get(0).pos.y);
}

// creates a Particle for each vertex of the polygon and adds it to the array m 
void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    m.add(new Particle(sx, sy, 1.2));
  }
}