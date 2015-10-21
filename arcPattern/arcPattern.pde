void setup() {

  size(600, 600);
  background(244);
  drawQuad();
  frameRate(60);
}

void draw() {
  //background(244);
  //drawQuad();
}

void mousePressed() {
  clearScreen();
  drawQuad();
}

void drawQuad() {
  int w = 20;
  int h = w;
  float s = 25;
  float r = random(10);
  int inc=0;
  strokeWeight(1.3);
  noFill();
  stroke(0);
  for (int i=width/w; i<width; i+=width/w) {
    
        inc++;
    for (int j=height/h; j<height; j+=height/h) {

      for (int q=0; q<1; q++) {
        pushMatrix();
        stroke(106+55*noise(i*j));
        fill(244,10);
        rectMode(CENTER);
        translate(i, j);
        rotate(-PI*noise(inc));
        arc(0, 0, s, s, 0, PI+HALF_PI, PIE);
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
