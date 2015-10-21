void setup() {

  size(800, 800);
  background(244);
  drawQuad();
  frameRate(0.5);
}

void draw() {
  drawQuad();
}

void mousePressed() {
  clearScreen();
  drawQuad();
}

void drawQuad() {
  int w = 50;
  int h = w;
  float s = 20+random(-10, 10);
  float r = 75;

  int step = 150;

  strokeWeight(1.3);
  noFill();
  stroke(0);
  for (int i=step-w-10; i<=width-w; i+=step) {
    for (int j=step-w-10; j<=height-w; j+=step) {

      for (int q=0; q<1; q++) {
        r = noise(i)*20;
        pushMatrix();
        //stroke(100+55*noise(i*j));
        noStroke();
        if (random(100)<15)
          fill(#BC2626, 100+random(50));
        else
          fill(0, 25+random(50));
        rectMode(CENTER);
        translate(i, j);
        //rotate(noise(i*j));
        quad(-s+10-random(r), -s + 10-random(r), 
        s+r+10-random(r), -s+10-random(r), 
        s+r+10-random(r), s+10-random(r), 
        -s+10-random(r), s+10-random(r));
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
    println("Frame saved - "+getTime()+".png");
    break;
  }
}
