//float angles [] = {360/6, 360/5, 360/4, 360/3, 360/2, 90};
//float angles [] = {0,45,90,135,180};
//float angles [] = {0,45,135,180};
float angles [] = {0,90,180,270};
color c [] = {#490A3D,#BD1550,#E97F02,#F8CA00,#8A9B0F};

void setup() {
  size(800, 800);
  background(222);
  smooth();
  frameRate(2);
}

void draw() {
  background(244);
  int size = 200;

  for (float x=0; x<width; x+=size) {
    for (float y=0; y<height; y+=size) {

      pushMatrix();
      translate(x+size/2,y+size/2);
      noStroke();
      //stroke(c[int(random(5))]);
      strokeCap(ROUND);
      fill(c[int(random(5))]);
      fill(44);
      //noFill();
      rotate(radians(angles[int(random(3))]));
      //rotate(radians(0));
      //stroke(44);
      //strokeWeight(20);
      //rect(-size/2,-size/2,size,size);
      //point(-size,-size);
      arc(-size/2,-size/2, size, size, 0, HALF_PI);
      arc(size/2,size/2, size, size, PI, PI+HALF_PI);
      //triangle(-size/2, -size/2, -size/2, size/2, size/2, -size/2);
      //polygon(0,0,size/2+0,4);
      popMatrix();
    }
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