color c[][] = {{
  #FF4E50, #FC913A, #F9D423, #EDE574, #E1F5C4
},{
  #2D2D29, #215A6D, #3CA2A2, #92C7A3, #DFECE6
},{
  #88BFA5, #F2C777, #F2955E, #F26052, #592525 
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
  rotate(0.0);
  fractalShape(0, 0, 231, 1, radians(60.00),6);
  popMatrix();
}

void fractalShape(float x, float y, float r, int gen, float angle, int limit) {
  if (x!=0 || y!=0) {
    for (float a = 0; a < TWO_PI*1; a+=angle) {
      pushMatrix();
      translate(x*cos(a), y*sin(a));
      rotate(4.710);
      fill(c[2][6-gen],250);
      stroke(c[2][gen-2],161);
      polygon(0, 0, r, 8-gen);
      popMatrix();
    }
  }

  x-=r/1.160;
  y-=r/1.160;
  //x-=r/2;
  //y-=r/2;
  if (gen<limit) {
    //fractalShape(x, y, r/2, gen+1, angle,limit);
    fractalShape(-x,y, r/2, gen+1, angle, limit);
    //fractalShape(-x, -y, r/2, gen+1, angle,limit);
    fractalShape(x, -y, r/2, gen+1, angle,limit);
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
