void setup() {

  size(600, 600);
  background(244);
  drawShape();
  frameRate(30);
}

void draw() {
  background(241);
  drawShape();
}

void mousePressed() {
  clearScreen();
  drawShape();
}
void drawShape() {

  float hSteps = width/30;
  float vSteps = height/30;

  for (float h=hSteps; h<width-hSteps; h+=hSteps) {
    for (float v=vSteps; v<=height-vSteps; v+=vSteps) {
      pushMatrix();
      stroke(50);
      strokeWeight(7.0001+oscilator(7,60,0));
      translate(h, v);
      //rotate(radians(oscilator(180,360,0)));
      line(15, 0, 5, 0+oscilator(6, 60, v*1)+noise(h)*6);
      popMatrix();
    }
  }
}

float oscilator(float amplitude, float period, float threashold) {
  return amplitude * sin(TWO_PI * (frameCount+threashold) / period);
}


void clearScreen() {

  rectMode(NORMAL);
  noStroke();
  fill(244);
  rect(0, 0, width, height);
}

String getTime() {
  int d = day();    // Values from 1 - 31
  int m = month();  // Values from 1 - 12
  int y = year();   // 2003, 2004, 2005, etc.
  int s = second();  // Values from 0 - 59
  int min = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23

  return d+"-"+m+"-"+y+"--"+h+"-"+min+"-"+s;
}


void keyPressed() {
  switch(key) {
  case 'p':
    saveFrame(getTime()+".png");
    break;
  }
}
