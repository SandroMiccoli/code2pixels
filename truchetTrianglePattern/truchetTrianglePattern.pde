int angles [] = {0,90,180,270};
color c [] = {#490A3D,#BD1550,#E97F02,#F8CA00,#8A9B0F};

void setup() {
  size(2000, 4000);
  background(255);
  smooth();
  noLoop();
}

void draw() {
  background(244);
  int size = 100;

  for (float x=0; x<width; x+=size) {
    for (float y=0; y<height; y+=size) {

      pushMatrix();
      translate(x+size/2,y+size/2);
      noStroke();
      fill(c[int(random(5))]);
      //rotate(radians(angles[int(random(3))]));
      //if (x>width/2) rotate(HALF_PI);
      triangle(-size/2, -size/2, -size/2, size/2, size/2, -size/2);
      popMatrix();
    }
  }
  saveFrame("print.png");
  exit();
}

void mousePressed(){
  redraw();
}