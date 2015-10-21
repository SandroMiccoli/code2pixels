void setup() {

  size(600, 600);
  background(244);
  drawRect(5,5,150,10,360,0,#94B8BF);
  frameRate(30);
}

void draw() {
  background(241);
  drawRect(6,6,120,45,300,0,#94b8e1);
  drawRect(4,4,211,-90,300,0,#bf95b5);
}

void mousePressed() {
  clearScreen();
  drawRect(5,5,150,10,360,0,#94B8BF);
}

void drawRect(int w, int h, float s, float a, float p, float t, color c) {
  //int w = 5;
  //int h = w;
  //float s = 150;
  float r = random(1);
  strokeWeight(1.3);
  noFill();
  noStroke();
  for (int i=width/w; i<width; i+=width/w) {
    for (int j=height/h; j<height; j+=height/h) {

      for (int q=0; q<1; q++) {
        pushMatrix();
        //stroke(100+55*noise(i*j));
        fill(c,50);
        rectMode(CENTER);
        translate(i, j);
        rotate(radians(oscilator(a,p,t)));
        rect(0, 0, s, s);
        popMatrix();
      }
    }
  }
}

float oscilator(float amplitude, float period, float threashold){
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
