float minH;
float maxH;
float dist;
int amount = 6;
PVector pos;
void setup() {
  size(800, 800);
  background(244);
  dist = width/2/amount+10;
  //noLoop();
  frameRate(1);
}

void draw() {
  background(244);
  pushMatrix();
  translate(width/2, height/2);
  
  //drawNSymmetryShapes(3,3,3);
  rotate(HALF_PI+0);
  drawNSymmetryShapes(3,6,6);
  rotate(HALF_PI);
  drawNSymmetryShapes(3,6,6);
  rotate(HALF_PI);
  drawNSymmetryShapes(3,6,2);
  popMatrix();
}

void drawNSymmetryShapes(int n, int sym, int shape) {
  for (int i=0; i<=n; i++) {
    float radius = 100*i;
    int size= int(random(10, 75));
    setRandomStyle();
    for (float a = 0; a < TWO_PI; a += TWO_PI/sym) {
      float sx =  cos(a) * radius;
      float sy = sin(a) * radius;
      pushMatrix();
      translate(sx, sy);
      rotate(-HALF_PI);
      polygon(0,0, size, shape);
      popMatrix();
    }
  }
}

void setRandomStyle() {
  int fill=int(random(100)); 
  if (fill%3==0 || fill%3==1) {
    if (int(random(10))%2==0)
    noFill();
    else
      fill(244);
    strokeWeight(random(2, 10));
    stroke(44);
  } else {
    fill(44);
  }
}

void polygon(float x, float y, float radius, int npoints) {
  if (npoints<=2) {
    pushStyle();
    stroke(44);
    point(x, y);
    popStyle();
  } else {
    float angle = TWO_PI / npoints;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * radius;
      float sy = y + sin(a) * radius;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
}

void mousePressed() {
  redraw();
}