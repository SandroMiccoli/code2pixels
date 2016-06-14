float w=69; // weight

float space=20;

int pY=100; //padding y
int minY;
int maxY;

int pX = 100;

void setup() {
  size(800, 800);
  background(244);
  strokeCap(PROJECT);
  noLoop();
  minY=pY;
  maxY=height-pY;
}

void draw() {
  for (float y=minY; y<maxY; y+=w+space) {
    w = map(y, minY, maxY, 69, 1);
    space = map(y, minY, maxY, 20, 0);
    strokeWeight(w);
    float c = map(y, minY, maxY, 255, 0);
    stroke(c);
    float x = map(y, minY, maxY, pX, width/2);
    line(x, y, width-x, y);
  }
  saveFrame("stairs.png");
}