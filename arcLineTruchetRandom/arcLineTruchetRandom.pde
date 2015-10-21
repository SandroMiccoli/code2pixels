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
  int size = 100;
  for (float x=0; x<width; x+=size) {
    for (float y=0; y<height; y+=size) {

      pushMatrix();
      translate(x+size/2, y+size/2);
      noStroke();
      //stroke(c[int(random(2))]);
      //strokeCap(SQUARE);
      fill(c[int(random(3))]);
      //fill(44);
      //noFill();
      rotate(radians(angles[int(random(4))]));
      //rotate(radians(0));
      int s = 3;
      stroke(44);
      strokeWeight(1);
      //rect(-size/2,-size/2,size,size);
      //point(-size,-size);
      int r = int(random(3));
      translate(-size/2, -size/2);
      r=0;
      switch(r) {
      case 0:
        tile5(size);
        break;

      case 1:
        tile2(size);
        break;

      case 2:
        //tile2(size);
        tile3(size);
        break;

      case 3:
        tile2(size);
        //tile3(size);
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
  //scale(2.6);
  strokeWeight(1.5);
  noFill();
  stroke(44);
  rect(-size/2, -size/2, size, size);
  strokeWeight(8);
  translate(-size/2, -size/2);
  tile5(size);

  //line(-size/2, 0, 0, -size/2);
  //line(0, size/2, size/2, 0);
}

void tile1(int size) {
  arc(-size/2, -size/2, size/2, size/2, 0, HALF_PI);
  arc(-size/2, -size/2, size, size, 0, HALF_PI);

  arc(size/2, size/2, size, size, PI, PI+HALF_PI);
  arc(size/2, size/2, size/2, size/2, PI, PI+HALF_PI);

  arc(-size/2, size/2, size, size, PI+HALF_PI, TWO_PI);
  arc(-size/2, size/2, size/2, size/2, PI+HALF_PI, TWO_PI);  

  arc(size/2, -size/2, size, size, HALF_PI, PI);
  arc(size/2, -size/2, size/2, size/2, HALF_PI, PI);
}

void tile2(int size) {
  arc(-size/2, -size/2, size/2, size/2, 0, HALF_PI);
  arc(-size/2, -size/2, size, size, 0, HALF_PI);

  arc(size/2, size/2, size, size, PI, PI+HALF_PI);
  arc(size/2, size/2, size/2, size/2, PI, PI+HALF_PI);
}

void tile3(int size) {
  point(0, 0); 
  line(-size/2, 0, 0, -size/2);
  line(-size/2, -size/4, -size/4, -size/2);
  line(size/2, 0, 0, size/2);
  line(size/2, size/4, size/4, size/2);
}

void tile4(int size) {
  point(0, 0); 
  line(-size/2, 0, 0, -size/2);
  line(-size/2, -size/4, -size/4, -size/2);
  line(size/2, 0, 0, size/2);
  line(size/2, size/4, size/4, size/2);
}

void tile5(int size) {
  
  beginShape();
  bezier(size/2, size, size/2, size*3/4, size, size*3/4, size, size/2);

  bezier(size/2, size, size/2, size*3/4, 0, size*3/4, 0, size/2);

  bezier(size/2, 0, size/2, size/4, size, size/4, size, size/2);

  bezier(size/2, 0, size/2, size/4, 0, size/4, 0, size/2);
  endShape();
}
