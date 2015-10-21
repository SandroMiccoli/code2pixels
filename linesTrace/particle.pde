class Particle{
  
 PVector pos;
 PVector speed;
 int limits = 35;
 
 Particle(PVector pos, PVector speed){
   this.pos = pos;
   this.speed = speed;
 }
 
 void display(){
   stroke(44);
   strokeWeight(2);
   point(pos.x,pos.y);
 }
 
 void update(){
  pos.x += speed.x;
  pos.y += speed.y;
 }
 
 void run(){
  //display();
  update();
  checkBoundaries();
 }
 
 void checkBoundaries(){
   if (pos.x<=limits || pos.x>width-limits)
     speed.x *= -1;
   if (pos.y<=limits || pos.y>height-limits)
     speed.y *= -1;
 }
  
}
