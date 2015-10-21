void setup(){
  
  size(600,600);
  //frameRate(0.1);
  
}

void draw(){
  
}

void mousePressed(){
  drawRect();
}

void drawRect(){
  clearScreen();
  for(int i=0;i<5;i++){
    strokeWeight(1.3);
    noFill();
    stroke(0);
    pushMatrix();
    rectMode(CENTER);
    translate(width/2,height/2);
    rotate(random(0.05)*i);
    rect(0,0,400,400);
    popMatrix();
  } 
}

void clearScreen(){
 
  rectMode(NORMAL);
  noStroke();
  fill(244);
  rect(0,0,width,height);
   
}
