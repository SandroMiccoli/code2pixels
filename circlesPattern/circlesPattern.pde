

void setup() {
  size(600, 600);
  background(243);
  noLoop();
}

void draw() {
  int step = 10;
  int size = 6;

  for (int i=step; i<width; i+=step) {
    for (int j=step; j<height; j+=step) {
      pushMatrix();
      float noise = noise(i*j);
      translate(i, j);
      int r = int(random(5));
      noFill();
      stroke(allColors[0][r],100);
      strokeWeight(2);
      ellipse(0,0,size*noise*random(2.5),size*noise*random(2.5));
      popMatrix();
    }
  }
}


float oscilator(float amplitude, float period, float threashold) {
  return amplitude * sin(TWO_PI * (frameCount+threashold) / period);
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
    println("Frame saved: "+getTime()+".png");
    saveFrame(getTime()+".png");
    break;
  }
}
