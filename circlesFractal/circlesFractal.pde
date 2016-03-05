void setup() {
  size(800, 800);
  background(244);
  //smooth();
  noLoop();
}

void draw() {
  background(255);
  noFill();
  stroke(0);
  //strokeWeight(1.7);
  pushMatrix();
  translate(height/2, width/2);
  //rotate(0.0);
  fractalCircle(0, 0, 200, 6, radians(33));
  popMatrix();
  saveFrame("print.png");
 // exit();
}

void fractalCircle(float x, float y, float r, int gen, float angle) {
  if (x!=0 || y!=0) {
    for (float a = 0; a <= TWO_PI*1; a+=angle) {
      ellipse(x*cos(a), y*sin(a), r, r);
    }
  }
  
  x-=r/1.048;
  y-=r/1.048;
  //x-=r/2;
  //y-=r/2;
  if (gen>0) {
    fractalCircle(x, y, r/2, gen-1, angle);
    //fractalCircle(-x,y, r/2, gen-1, angle);
    fractalCircle(-x, -y, r/2, gen-1, angle);
    //fractalCircle(x, -y, r/2, gen-1, angle);
  }
}