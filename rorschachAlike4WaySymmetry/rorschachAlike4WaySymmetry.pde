color c[] = {#ECD078, #D95B43, #C02942, #542437};
//color c[] = {#587291, #2F97C1, #1CCAD8, #15E6CD, #0CF574};

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
  //noiseSeed(38);
  pushMatrix();
  translate(width/2, height/2);
  rotate(HALF_PI);
  
  beginShape();
  for (float a = 0; a < HALF_PI; a += angle) {
    float limit=0.005;
    float b = map(a, 0, HALF_PI, -limit, limit);
    strokeWeight(9.9);
    strokeCap(PROJECT);
    stroke(myColors[currentPallet][int(noise(b)*100)%4]);
    //stroke(244);
    //noStroke();
    float x = 0;
    float y = 0;
    float sx = x + cos(a) * (radius+noise(b)*250);
    float sy = y + sin(a) * (radius+noise(b)*250);
    line(x, y, sx, sy);
    line(x, y, -sx, sy);
    line(x, y, -sx, -sy);
    line(x, y, sx, -sy);
    stroke(255);
    vertex(sx,sy);
    vertex(-sx,sy);
    vertex(sx,-sy);
    vertex(-sx,-sy);
  }
  noStroke();
  fill(44,250);
  noFill();
  endShape(CLOSE);
  popMatrix();
  
}

void mousePressed() {
  redraw();
}