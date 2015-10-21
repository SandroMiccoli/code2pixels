

void setup() {
  size(600, 600);
  background(244);
  frameRate(1);
  noLoop();

  
  fill(#3AB29E, 50);
  smooth();
  float size = 235;
  float x = width/2;
  float y = height/2;
int j=0;
  noStroke();
  ellipse(x, y, size, size);
  for(float i=2; i<150; i+=1.681){
    noStroke();
    ellipse(x+size*sin(radians(137.5*j)), y-size*cos(radians(137.5*j)), size/i, size/i);
    stroke(50,50);
    strokeWeight(0.5);
    line(width/2,height/2,x+size*sin(radians(137.5*i)), y-size*cos(radians(137.5*i)));
    
    j++;
  }
  
  noStroke();
  
  //ellipse(x+size*sin(radians(137.5)), y-size*cos(radians(137.5)), size/2, size/2);
  
  
}
