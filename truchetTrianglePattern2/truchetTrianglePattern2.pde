//float angles [] = {360/6, 360/5, 360/4, 360/3, 360/2, 90};
//float angles [] = {0,45,90,135,180};
//float angles [] = {0,45,135,180};
float angles [] = {0,90,180,270};
color c [] = {#490A3D,#BD1550,#E97F02,#F8CA00,#8A9B0F};

void setup() {
  size(600, 600);
  background(222);
  smooth();
  noLoop();
}

void draw() {
  background(244);
  int size = 100;

  for (float x=size/2; x<width; x+=size) {
    for (float y=size/2; y<height; y+=size) {
      pushMatrix();
      translate(x,y);
      noStroke();
      //stroke(c[int(random(5))]);
      fill(c[int(random(5))]);
      //fill(244);
      //rotate(radians(angles[int(random(3))]));
      //triangle(-size/2, -size/2, -size/2, size/2, size/2, -size/2);
      drawSmallTriangles(size/2);
      //polygon(0,0,size/2+0,4);
      popMatrix();
    }
  }
}
void drawSmallTriangles(int x){
  for (int i=0; i<4; i++){
      triangle(-x, -x, -x, x, x, -x);
  }
  
}
void mousePressed(){
  redraw(); 
}