void setup() {

  size(600, 600);
  background(244);

  drawPattern();
  frameRate(30);
}

void draw() {
  background(244);
  drawPattern();
}

void mousePressed() {
  clearScreen();
  drawPattern();
}

void drawPattern() {
  int w = 30;
  int h = 6;

  int padding=10;

  int s = 71;

  float x1, x2, y1, y2;

  stroke(105,100);
  strokeCap(SQUARE);
  strokeWeight(9.5+oscilator(9,120,0));
  noFill();

  // vertical
  for (int i=0; i<=width+width/w; i+=width/w) {
    pushMatrix();
    stroke(#209580,46);
    translate(i, 0);
    bezier(-28, -4, 
            20-oscilator(40, 60, 0), 267+noise(i), 
            10-oscilator(40, 60, 21), 326, 
            -30, 604);
    popMatrix();
  }

  // horizontal
  for (int i=0; i<=height+height/w; i+=height/w) {
    pushMatrix();
    stroke(#766dd1,100);
    translate(width, i);
    rotate(HALF_PI);
    bezier(-29, -5, 
            20-oscilator(38, 60, 4), 286+oscilator(36,30,0), 
            -44-oscilator(43, 60, 21), 201, 
            -33, 609);
    popMatrix();
  }
}

float oscilator(float amplitude, float period, float threashold) {
  return amplitude * cos(TWO_PI * (frameCount+threashold) / period);
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

