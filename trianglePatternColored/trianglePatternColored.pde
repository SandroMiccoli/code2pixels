//float angles [] = {360/6, 360/5, 360/4, 360/3, 360/2, 90};
//float angles [] = {0,45,90,135,180};
//float angles [] = {0,45,135,180};
float angles [] = {0,90,180,270};
color c [] = {#490A3D,#BD1550,#E97F02,#F8CA00,#8A9B0F};

void setup() {
  size(800, 800);
  background(222);
  smooth();
  frameRate(1);
}

void draw() {
  background(244);
  int size = 50;

  for (float x=size/2; x<width; x+=size) {
    for (float y=size/2; y<height; y+=size) {

      pushMatrix();
      translate(x,y);
      noStroke();
      //stroke(c[int(random(5))]);
      fill(c[int(random(5))]);
      //fill(244);
      rotate(radians(angles[int(random(3))]));
      triangle(-size/2, -size/2, -size/2, size/2, size/2, -size/2);
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
