//float angles [] = {360/6, 360/5, 360/4, 360/3, 360/2, 90};
//float angles [] = {0,45,90,135,180};
//float angles [] = {0,45,135,180};
float angles [] = {
  0, 90, 180, 270
};
color c [] = {
  #490A3D, #BD1550, #E97F02, #F8CA00, #8A9B0F
};

void setup() {
  size(800, 800);
  background(222);
  smooth();
  frameRate(1);
}

void draw() {
  background(244);

  //testTile();
  drawTiles();
}


void drawTiles() {
  int size = 50;
  for (float x=0; x<width; x+=size) {
    for (float y=0; y<height; y+=size) {

      pushMatrix();
      translate(x+size/2, y+size/2);
      noStroke();
      //stroke(c[int(random(2))]);
      strokeCap(ROUND);
      //stroke(c[int(random(3))]);
      //fill(44);
      noFill();
      rotate(radians(angles[int(random(3))]));
      //rotate(radians(0));
      int s = 3;
      stroke(44);
      strokeWeight(8);
      //rect(-size/2,-size/2,size,size);
      //point(-size,-size);
      int r = int(random(6));
      
      println(r);
      switch(r) {
      case 0:
        arc(-size/2, -size/2, size, size, 0, HALF_PI);
        arc(size/2, size/2, size, size, PI, PI+HALF_PI);
        break;

      case 4:
        arc(-size/2, -size/2, size, size, 0, HALF_PI);
        strokeWeight(s);
        ellipse(0, size/2, s, s);
        ellipse(size/2, 0, s, s);
        break;

      case 2:
        arc(-size/2, -size/2, size, size, 0, HALF_PI);
        arc(size/2, -size/2, size, size, HALF_PI, PI);
        strokeWeight(s);
        ellipse(size/2, 0, s, s);
        break;

      case 5:
        strokeWeight(s);
        ellipse(0, size/2, s, s);
        ellipse(size/2, 0, s, s);
        ellipse(0, -size/2, s, s);
        ellipse(-size/2, 0, s, s);
        break;

      case 1:
        arc(-size/2, -size/2, size, size, 0, HALF_PI);
        arc(size/2, size/2, size, size, PI, PI+HALF_PI);
        arc(-size/2, size/2, size, size, PI+HALF_PI, TWO_PI);
        break;

      case 3:
        arc(-size/2, -size/2, size, size, 0, HALF_PI);
        arc(size/2, size/2, size, size, PI, PI+HALF_PI);
        arc(-size/2, size/2, size, size, PI+HALF_PI, TWO_PI);
        arc(size/2, -size/2, size, size, HALF_PI, PI);
        break;
      }
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


void testTile() {

  int size = 100;
  translate(400, 400);
  strokeWeight(0.5);
  stroke(44);
  noFill();
  rect(-size/2, -size/2, size, size);
  noFill();
  stroke(44);
  strokeWeight(12);

  arc(-size/2, -size/2, size, size, 0, HALF_PI);
  arc(size/2, size/2, size, size, PI, PI+HALF_PI);
  arc(-size/2, size/2, size, size, PI+HALF_PI, TWO_PI);
  arc(size/2, -size/2, size, size, HALF_PI, PI);

  //line(-size/2, 0, 0, -size/2);
  //line(0, size/2, size/2, 0);
}
