//color c[] = {#ECD078, #D95B43, #C02942, #542437};
color c[] = {#587291, #2F97C1, #1CCAD8, #15E6CD, #0CF574};

float angle = TWO_PI / 330;
int radius = 100;

void setup() {
  size(800, 800);
  background(244);
  noLoop();
}

void draw() { 
  blendMode(DIFFERENCE);
  background(bg);
  int r = int(random(500));
  noiseSeed(r);
  println(r);
  //noiseSeed(185);
  pushMatrix();
  translate(width/2, height/2);
  rotate(-HALF_PI);
  
  for (float a = 0; a < HALF_PI; a += angle) {
    float limit=1.9;
    float b = map(a, 0, HALF_PI, -limit, limit);
    strokeWeight(1.7);
    stroke(myColors[currentPallet][int(noise(b)*100)%5]);
    //stroke(244);
    float x = +100;
    float y = 0;
    float sx = x + cos(a) * (radius+noise(b)*250);
    float sy = y + sin(a) * (radius+noise(b)*250);
    line(x, y, sx, sy);
    line(x, y, -sx, sy);
    line(x, y, -sx, -sy);
    line(x, y, sx, -sy);
   
  }
  popMatrix();
}

void mousePressed() {
  redraw();
}