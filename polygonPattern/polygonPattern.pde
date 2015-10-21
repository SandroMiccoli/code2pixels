void setup() {
  size(600, 600);
  background(44);
  //noLoop();
}

void draw() {
  background(#F8CA00);
  stroke(25,-3);
  strokeWeight(0);
  int size = 59;
  int step = 100;
  
  for(float x=step/2; x<width; x+=step){
  for(float y=step/2; y<height; y+=step){
    pushMatrix();
    fill(#8A9B0F);
    translate(x,y);
    rotate(radians(102));
    polygon(0,0,size,5);
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
