import processing.pdf.*;

void setup() {
  size(600, 600);
  background(244);
  noLoop();
}

void draw() {  

  float p = random(50, 100);
  PVector padding = new PVector(p*1.618, p);
  background(244);
  fill(244);

  noStroke();
  //stroke(244);
  //strokeWeight(0);
  blendMode(DIFFERENCE);

  triangle(padding.x, 0, width-padding.x, height/2, width-padding.x, height);
  triangle(width-padding.x, 0, padding.x, height/2, padding.x, height);
  triangle(padding.x, height, width-padding.x, height/2, width-padding.x, 0);
  triangle(width-padding.x, height, padding.x, height/2, padding.x, 0);

  triangle(0, padding.y, width/2, height-padding.y, width, height-padding.y);
  triangle(width, padding.y, width/2, height-padding.y, 0, height-padding.y);
  triangle(0, height-padding.y, width/2, padding.y, width, padding.y);
  triangle(width, height-padding.y, width/2, padding.y, 0, padding.y);

  saveFrame("eba.png");
}

void mousePressed() {
  redraw();
}