color c[] = {#ECD078, #D95B43, #C02942, #542437};

float angle = TWO_PI / 360;
int radius = 100;

void setup() {
  size(800, 800);
  background(244);
  noLoop();
}

void draw() { 
  background(244);
  noiseSeed(int(random(500)));
  pushMatrix();
  translate(width/2, height/2);
  rotate(HALF_PI);
  
  beginShape();
  for (float a = angle; a <= TWO_PI; a += angle) {
    
    strokeWeight(1.6);
    //stroke(c[int(map(a,0,TWO_PI,0,255))%4]);
    float b = map(a, 0, TWO_PI, -20, 20);
    stroke(44);
    float x = 0;
    float y = 0;
    float sx = x + cos(a) * (radius+noise(b)*250);
    float sy = y + sin(a) * (radius+noise(b)*250);
    line(x, y, sx, sy);
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