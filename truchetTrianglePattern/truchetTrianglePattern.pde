int angles [] = {0,90,180,270};
color c [] = {#490A3D,#BD1550,#E97F02,#F8CA00,#8A9B0F};

void setup() {
  size(600, 600);
  background(222);
  smooth();
  noLoop();
}

void draw() {
  background(244);
  int size = 50;

  for (float x=0; x<width; x+=size) {
    for (float y=0; y<height; y+=size) {

      pushMatrix();
      translate(x+size/2,y+size/2);
      noStroke();
      fill(c[int(random(5))]);
      rotate(radians(angles[int(random(3))]));
      triangle(-size/2, -size/2, -size/2, size/2, size/2, -size/2);
      popMatrix();
    }
  }
  saveFrame("print.png");
}

void mousePressed(){
  redraw();
}