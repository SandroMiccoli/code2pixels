void setup() {
  size(800, 800);
  background(244);
  float r=50;
  float x = 25;
  color cBottom=#FF0000;
  color cTop=#00FF00;
  noStroke();
  fill(cTop);
  rect(0,0,width,height/2);
  fill(cBottom);
  rect(0,height/2,width,height/2);
  //noFill();
  stroke(0);
  strokeWeight(2);

  for (int i=0; i<50; i++) {
    if (i%2==0){
      fill(cBottom);
      arc(x, height/2, r, r, PI, TWO_PI);
    }
    else{
      fill(cTop);
      arc(x, height/2, r, r, 0, PI);
    }
    
    x+=r/2;
    r = int(random(20, 150));
    x+=r/2;
  }
}

