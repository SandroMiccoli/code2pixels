color[] pantone2016 = 
  {
  #f7cac9, #f7786b, #91a8d0, #004d8c, #fbe337, 
  #98ddde, #9896a4, #dc443a, #b18f6a, #71cc51
};

// min/max width of the half circles
int min=1;
int max=50;

color cAux;
void setup() {
  size(800, 800);
  background(244);
  noStroke();
  noLoop();
}

void draw() {
  //color cTop=pantone2016[int(random(pantone2016.length))];
  //color cBottom=pantone2016[int(random(pantone2016.length))];  
  //color cTop=pantone2016[3];
  //color cBottom=pantone2016[7];  
  color cTop=44;
  color cBottom=pantone2016[2];

  float r=int(random(min, max));
  float x = r/2;
  float hPlus = height/10;
  //blendMode(DIFFERENCE);
  for (float h=0; h<=height; h+=hPlus) {
    //stroke(0);
    fill(cTop);
    rect(0, h, width, h+hPlus);
    //stroke(255);
    fill(cBottom);
    rect(0, h+hPlus, width, h+hPlus*2);
    
    noStroke();
    //noFill();
    //stroke(0);
    //strokeWeight(2);
    cAux=cTop;
    cTop=cBottom;
    cBottom=cAux;

    for (int i=0; i<50; i++) {
      float rHeight = random(1, 1.5);
      //float rHeight = 6*noise(i*100);
      if (i%2==0) {
        fill(cBottom);
        arc(x, h, r, r*rHeight, PI, TWO_PI);
      } else {
        fill(cTop);
        arc(x, h, r, r*rHeight, 0, PI);
      }

      x+=r/2;
      r = int(random(min, max));
      x+=r/2;
    }
    x=0;
  }
}

void mousePressed() {
  redraw();
}