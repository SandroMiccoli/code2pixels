void setup() {

  size(600, 600);
  background(244);
  
  drawPattern();
  frameRate(0.5);
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
  int w = 19;
  int h = 6;
  
  int padding=10;
  
  int s = 71;
  
  float x1,x2,y1,y2;
  
  stroke(130);
  strokeWeight(3);
  noFill();
  
  for (int i=5; i<width; i+=width/w) {
    for (int j=-4; j<height; j+=height/h) {
      pushMatrix();
      translate(i,j);
      bezier(5, 13, -26, 29*noise(j), 96, 90*noise(j), 5, 113);
      popMatrix();
    }
  }

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
