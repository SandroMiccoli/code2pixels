void setup() {
  size(800, 800);
  background(244);
  noLoop();
  noFill();
  strokeCap(SQUARE);
}

void draw() {
  translate(58, 13);
  background(44);
  float size=45;
  for (int x=1; x<10; x+=1) {
    for (int y=1; y<=9; y+=1) {
      if (bigHex(x, y)) {   
        pushMatrix();
        float newX = x*size*1.499;
        float newY = y*size*1.733;
        if (x%2==0) newY+=size*0.8667;
        translate(newX, newY);
        rotate(PI/3*int(random(50)));

        hexagon(0, 0, size);

        popMatrix();
      }
    }
  }
  saveFrame("hex.png");
}

boolean bigHex(float x, float y) {
  // probably a better way to do this...
  if (
    ((x<=3 && y<2) || (x==1 && y==2)) ||
    ((x>=7 && y<2) || (x==9 && y==2)) ||
    ((x<=4 && y>8) || ((x==2 || x==1) && y==8)) ||
    ((x>=6 && y>8) || ((x==8 || x==9) && y==8)) 
    )return false;
  else return true;
}

void hexagon(float x, float y, float radius) {
  int npoints = 6;
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);

    strokeWeight(6);

    stroke(#9e2b25);
    if (a==angle*4) {
      arc(sx, sy, radius, radius, 0, TWO_PI/3, OPEN);
      arc(sx, sy, radius/2, radius/2, 0, TWO_PI/3, OPEN);
      arc(sx, sy, radius*1.5, radius*1.5, 0, TWO_PI/3, OPEN);
    }
    if (a==angle*2) {
      arc(sx, sy, radius, radius, TWO_PI/3*2, TWO_PI, OPEN);
      arc(sx, sy, radius/2, radius/2, TWO_PI/3*2, TWO_PI, OPEN);
      arc(sx, sy, radius*1.5, radius*1.5, TWO_PI/3*2, TWO_PI, OPEN);
    }
    if (a==0) {
      arc(sx, sy, radius, radius, TWO_PI/3, TWO_PI/3*2, OPEN);
      arc(sx, sy, radius/2, radius/2, TWO_PI/3, TWO_PI/3*2, OPEN);
      arc(sx, sy, radius*1.5, radius*1.5, TWO_PI/3, TWO_PI/3*2, OPEN);
    }
  }
  strokeWeight(1);
  stroke(44, 5);
  endShape(CLOSE);
}