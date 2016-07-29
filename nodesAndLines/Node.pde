class Node{
  PVector pos;
  int size;
  
  Node(float x, float y, int s){
    pos = new PVector(x,y);
    size=s;
  }
  
  void display(){
    pushStyle();
    setStyle();
    ellipse(pos.x, pos.y, size, size);
    popStyle();
  }
  
  void setStyle(){
    fill(44,50);
    noStroke();
  }
  
  
}