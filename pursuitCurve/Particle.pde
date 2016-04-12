/*

Inspired in the MiceProblem:
  https://en.wikipedia.org/wiki/Mice_problem

*/

class Particle{
  
  PVector pos;
  float vel;
  PVector path;
  
  Particle(float x, float y, float v){
    pos = new PVector(x,y);
    path = new PVector(0,0);
    vel = v;
  }
  
  void follow(Particle target){
    path = PVector.sub(target.pos, this.pos); //<>//
    float scale = vel/path.mag();
    path = new PVector(path.x*scale, path.y*scale);
    pos.add(path);
  }
  
  void move(){
    pos.add(path);
  }
  
  void display(){
    //move();
    ellipse(pos.x,pos.y,5,5);
    
  }
  
}