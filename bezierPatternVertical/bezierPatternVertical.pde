
color[] c = {
  #59B390, #F0DDAA, #E47C5D, #E32D40, #152B3C
};

void setup() {
  size(600, 400);
  background(243);
  frameRate(1);
  noLoop();
}

void draw() {

  for (int j=0; j<width; j+=1) {
    pushMatrix();
    //translate(i, 0);
    float x1 = j;
    float y1 = 0;
    float x2 = x1;
    float y2 = y1+70+random(0, width/6);
    int r = int(random(5));
    float cr = random(-50,50);
    float cr2 = random(-50,50);
    strokeWeight(2.1);
    noFill();
    stroke(allColors[4][int(r)]);
    bezier(x1, y1,
            x1,y1, 
            x2+cr2, y2, 
            x2, y2
    );
    line(x1,height,x1,height-y2);
    popMatrix();
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
