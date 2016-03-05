color c[] = {#ECD078, #D95B43, #C02942, #542437};

float angle = TWO_PI / 620;
int radius = 100;

import processing.pdf.*;
boolean saveOneFrame = false;

void setup() {
  size(1000, 1000);
  background(244);
  noLoop();
}

void draw() { 
  if(saveOneFrame == true) {
    beginRecord(PDF, "saved.pdf"); 
  }
  background(bg);
  noiseSeed(int(random(500)));
  //noiseSeed(38);
  pushMatrix();
  translate(width/2, height/2);
  rotate(HALF_PI);
  blendMode(SUBTRACT);
  beginShape();
  for (float a = angle; a <= TWO_PI; a += angle) {
    float limit=20;
    
    float b = map(a, 0, TWO_PI, -limit, limit);
    strokeWeight(1.9);
    strokeCap(PROJECT);
    //stroke(44);
    stroke(myColors[currentPallet][int(noise(b)*100)%5]);
    float x = 0;
    float y = 0;
    float sx = x + cos(a) * (radius+noise(b)*400);
    float sy = y + sin(a) * (radius+noise(b)*400);
    line(x, y, sx, sy);
    vertex(sx,sy);
  }
  noStroke();
  fill(44,50);
  noFill();
  endShape(CLOSE);
  popMatrix();
  if(saveOneFrame == true) {
    endRecord();
    saveOneFrame = false; 
  }
}

void mousePressed() {
  redraw();
}