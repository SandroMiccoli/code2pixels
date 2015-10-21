 //<>//
float dist;
int amount = 6;
PVector pos;
void setup() {
  size(800, 800);
  background(244);
  dist = width/2/amount+10;
  noLoop();
}

void draw() {
  background(244);
  stroke(44);
  strokeWeight(1);
  //line(width/2, minH, width/2, maxH);

  for (int j=1; j<amount; j++) {

    for (int i=1; i<amount; i++) {

      pushMatrix();
      translate(dist*j, dist*i);
      pos = new PVector(dist*j, dist*i);
      setRandomStyle();
      drawFourSymShapes();
      popMatrix();
    }
  }
}

void drawFourSymShapes() {
  int size= int(random(10, 75));
  
  pushMatrix();
  
  rectMode(CENTER);
  float f [][] = {{0, 0}, 
    {width-pos.x*2, 0}, 
    {width-pos.x*2, height-pos.y*2}, 
    {0, height-pos.y*2}};
  int points = int(random(7));
  for (int i=0; i<4; i++) {
    drawShape(f[i][0], f[i][1], size/2, points);
  }

  popMatrix();
  
}

void drawShape(float x, float y, float size, int npoints) {
  //randomSeed(0);
  pushMatrix();
  translate(x, y);
  rotate(-HALF_PI);
  polygon(0, 0, size, npoints);
  popMatrix();
}

void setRandomStyle() {
  int fill=int(random(100)); 
  if (fill%3==0 || fill%3==1) {
    //if (int(random(10))%2==0)
    noFill();
    //else
    //  fill(244);
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