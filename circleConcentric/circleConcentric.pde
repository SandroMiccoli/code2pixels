void setup(){
   //size(800,800);
   size(600,600);
   background(244);
   smooth();
   noLoop();
}

void draw(){
  noFill();
  stroke(44);
  strokeWeight(4);
  for (float i=1; i<10; i+=1.618){
    ellipse(width/2+random(10),height/2,60*i,60*i);
  }
}
