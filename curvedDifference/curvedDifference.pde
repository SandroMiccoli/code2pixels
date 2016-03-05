color[] pantone2016 = 
{
  #f7cac9, #f7786b, #91a8d0, #004d8c, #fbe337, 
  #98ddde, #9896a4, #dc443a, #b18f6a, #71cc51
};

// min/max width of the half circles
int min=1;
int max=100;

void setup() {
  size(800, 800);
  background(244);
  noStroke();
  noLoop();
}

void draw() {
  //color cTop=pantone2016[int(random(pantone2016.length))];
  //color cBottom=pantone2016[int(random(pantone2016.length))];  
  color cTop=pantone2016[3];
  color cBottom=pantone2016[7];
  
  float r=int(random(min, max));
  float x = r/2;

  fill(cTop);
  rect(0, 0, width, height/2);
  fill(cBottom);
  rect(0, height/2, width, height/2);
  //noFill();
  //stroke(0);
  //strokeWeight(2);

  for (int i=0; i<50; i++) {
  float rHeight = random(1,7);
  //float rHeight = 6*noise(i*100);
    if (i%2==0) {
      fill(cBottom);
      arc(x, height/2, r, r*rHeight, PI, TWO_PI);
    }
    else {
      fill(cTop);
      arc(x, height/2, r, r*rHeight, 0, PI);
    }

    x+=r/2;
    r = int(random(min, max));
    x+=r/2;
  }
}

void mousePressed() {
  redraw();
}