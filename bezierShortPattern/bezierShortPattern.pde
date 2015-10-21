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

void drawPattern(){
  int w = 60;
  int h = 6;
  
  int padding=10;
  
  int s = 71;
  
  float x1,x2,y1,y2;
  
  stroke(155);
  strokeWeight(1.5);
  noFill();
  
  // vertical
  for (int i=0; i<width-width/w; i+=width/w) {
      pushMatrix();
      translate(i,0);
      bezier(9, 10, 20-oscilator(60,30,0), 367+noise(i), 15-oscilator(71,30,4), 317, 13, 590);
      popMatrix();
    
  }
  
  // horizontal
  for (int i=0; i<height-height/w; i+=height/w) {
      pushMatrix();
      translate(width,i);
      rotate(HALF_PI);
      bezier(9, 10, 20-oscilator(28,30,4), 267+noise(i), 10-oscilator(25,30,21), 326, 13, 590);
      popMatrix();
    
  }

}

float oscilator(float amplitude, float period, float threashold){
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

