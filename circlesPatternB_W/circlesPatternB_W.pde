void setup() {
  size(600, 600);
  background(222);
  frameRate(30);
}
void draw() {
  //background(242);
  fill(242,120);
  rect(0,0,width,height);
  drawShape();
}

void drawShape() {

  int size = 55;
  float period = 30;

  for (int i=0; i<6; i++) {
    pushMatrix();
    fill(100, 150);
    //stroke(222, 0);
    noStroke();
    translate(width/2, height/2);
    ellipse(150*sin(frameCount/period*i), 150*cos(frameCount/period*i), size, size);
    popMatrix();
  }
}
