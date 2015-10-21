void setup() {
  size(800, 800);
  background(44);
  //noLoop();
}

void draw() {
  background(244);
  stroke(44);
  noFill();
  for (int i=0; i<5; i++) {
    pushMatrix();

    translate(400, 93);
    rotate(radians(-90));
    strokeWeight(9-i);
    for (int j=0; j<1; j++){
    polygon(-350, 0+311*j, 200-i*52, 6-i);
    }

    popMatrix();
  }
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

