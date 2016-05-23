

class MiceProblem {

  ArrayList<Particle> p;

  MiceProblem(){
     p = new ArrayList<Particle>();
  }
  
  MiceProblem(float x, float y, float radius, int npoints) {
    p = new ArrayList<Particle>();
    polygon(x, y, radius, npoints);
  }

  // follows elements in clockwise (cw)
  // (last element follows first)
  void followCw() {
    for (int i=0; i<p.size()-1; i++) {
      p.get(i).follow(p.get(i+1));
    }
    p.get(p.size()-1).follow(p.get(0));
  }

  // follows elements in counter clockwise (ccw)
  void followCcw() {
    p.get(0).follow(p.get(p.size()-1));
    for (int i=p.size()-1; i>0; i--) {
      p.get(i).follow(p.get(i-1));
    }
  }

  // draw lines from each element to the next
  // (last element connects to first first)
  void drawLines() {
    for (int i=0; i<p.size()-1; i++) {
      line(p.get(i).pos.x, p.get(i).pos.y, p.get(i+1).pos.x, p.get(i+1).pos.y);
    }
    line(p.get(p.size()-1).pos.x, p.get(p.size()-1).pos.y, p.get(0).pos.x, p.get(0).pos.y);
  }

  void drawCenterRotated(float a) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(a));
    drawLines();
    popMatrix();
  }


  // creates a Particle for each vertex of the polygon and adds it to the array p 
  void polygon(float x, float y, float radius, int npoints) {
    float angle = TWO_PI / npoints;
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * radius;
      float sy = y + sin(a) * radius;
      p.add(new Particle(sx, sy, 1.2));
    }
  }
  
  void addParticle(float x, float y, float s){
    p.add(new Particle(x, y, s));
  }
}