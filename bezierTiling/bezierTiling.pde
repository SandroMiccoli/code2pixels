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
  frameRate(5);
}

void draw() {
  background(244);
  int size = 100;
  //testTile();
  
  for (float x=0; x<width; x+=size) {
    for (float y=0; y<height; y+=size) {

      pushMatrix();
      translate(x+size/2, y+size/2);
      noStroke();
      //stroke(c[int(random(5))]);
      strokeCap(ROUND);
      stroke(c[int(random(5))]);
      //fill(44);
      noFill();
      rotate(radians(angles[int(random(3))]));
      //rotate(radians(0));
      stroke(44);
      strokeWeight(3);
      //rect(-size/2,-size/2,size,size);
      //point(-size,-size);
      
      bezier(-size/2, 0, -31, -91, 1, 66, 0, -size/2);
      bezier(0, size/2, 1, -66, 31, 91, size/2, 0);
      //arc(-size/2,-size/2, size, size, 0, HALF_PI);
      //arc(size/2,size/2, size, size, PI, PI+HALF_PI);
      //triangle(-size/2, -size/2, -size/2, size/2, size/2, -size/2);
      //polygon(0,0,size/2+0,4);
      popMatrix();
    }
  }
  
}

void testTile(){
 
  int size = 100;
  translate(400,400);
  rect(-size/2,-size/2,size,size);
  
  line(-size/2, 0, 0, -size/2);
  line(0, size/2, size/2, 0); 
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
