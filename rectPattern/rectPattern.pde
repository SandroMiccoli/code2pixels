void setup() {

  size(600, 600);
  background(244);
  drawRect();
  frameRate(30);
}

void draw() {
  background(244);
  drawRect();
}

void mousePressed() {
  clearScreen();
  drawRect();
}

void drawRect() {
  int w = 3;
  int h = w;
  float s = 150*noise(frameCount);
  float r = random(1);
  strokeWeight(1.3);
  noFill();
  stroke(0);
  for (int i=width/w; i<width; i+=width/w) {
    for (int j=height/h; j<height; j+=height/h) {

      for (int q=0; q<1; q++) {
        pushMatrix();
        stroke(100+55*noise(i*j));
        //fill(255);
        rectMode(CENTER);
        translate(i, j);
        rotate(noise(2*i*q)*r*frameCount);
        rect(0, 0, s, s);
        popMatrix();
      }
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
