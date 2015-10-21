PVector p1,p2,p3,p4;
 
void setup(){
 size(800,800);
 background(244);
 stroke(44);
 strokeWeight(2);
 noFill();
}

void draw(){
 background(244);
 float top = 10;
 float bottom = height-top;
 float right = width*7/8;
 float left = width-right;
 p1 = new PVector(width/2,top);
 p2 = new PVector(right,height/2);
 p3 = new PVector(width/2,bottom);
 p4 = new PVector(left,height/2);
 for (int i=0; i<15; i++){
   p1.y += 5;
   p3.y -= 5;
   p2.x -= 19.0;
   p4.x += 19.0;
   quad(p1.x,p1.y,p2.x,p2.y,p3.x,p3.y,p4.x,p4.y);
 } 
}
