color c[][] = {{
  #FF4E50, #FC913A, #F9D423, #EDE574, #E1F5C4
},{
  #2D2D29, #215A6D, #3CA2A2, #92C7A3, #DFECE6
}
};

void setup() {
  size(800, 800);
  background(244);
  smooth();
}

void draw() {
  background(244);
  //noFill();
  fill(66, 100);
  stroke(66);
  strokeWeight(1.77);
  pushMatrix();
  translate(height/2, width/2);
  rotate(2.1);
  fractalShape(0, 0, 231, 6, radians(60.00));
  popMatrix();
}

void fractalShape(float x, float y, float r, int gen, float angle) {
  if (x!=0 || y!=0) {
    for (float a = 0; a < TWO_PI*1; a+=angle) {
      pushMatrix();
      translate(x*cos(a), y*sin(a));
      rotate(2.616);
      fill(c[1][5-gen],270);
      stroke(c[1][5-gen],310);
      polygon(0, 0, r, gen+1);
      popMatrix();
    }
  }

  x-=r/1.150;
  y-=r/1.150;
  //x-=r/2;
  //y-=r/2;
  if (gen>1) {
    fractalShape(x, y, r/2, gen-1, angle);
    //fractalShape(-x,y, r/2, gen-1, angle);
    fractalShape(-x, -y, r/2, gen-1, angle);
    //fractalShape(x, -y, r/2, gen-1, angle);
  }
}


void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

