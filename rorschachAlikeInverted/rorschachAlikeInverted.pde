color c[] = {#ECD078, #D95B43, #C02942, #542437};

float angle = TWO_PI / 360;
int radius = 100;

void setup() {
  size(800, 800);
  background(244);
  noLoop();
}

void draw() { 
  background(bg);
  noiseSeed(int(random(500)));
  //noiseSeed(38);
  blendMode(EXCLUSION);
  pushMatrix();
  translate(width/2, height/2);
  rotate(HALF_PI);
  
  beginShape();
  for (float a = angle; a <= TWO_PI; a += angle) {
    int limit=11;
    float b = map(a, 0, TWO_PI, -limit, limit);
    strokeWeight(1.5);
    stroke(myColors[currentPallet][int(noise(b)*100)%4]);
    float x = 0;
    float y = 0;
    float sx = x + cos(a) * (radius+noise(b)*250);
    float sy = y + sin(a) * (radius+noise(b)*250);
    //line(x, y, sx, sy);
    line(sx, sy, sx*100, sy*100);
    vertex(sx,sy);
  }
  noStroke();
  fill(44,50);
  noFill();
  endShape(CLOSE);
  popMatrix();
}

void mousePressed() {
  redraw();
}