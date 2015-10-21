
import gifAnimation.*;
import processing.opengl.*;

GifMaker gifExport;

boolean makeGif = false;

void setup() {
  size(600, 600);
  background(222);
  frameRate(30);
  
  
  
  if (makeGif){
    gifExport = new GifMaker(this, "export.gif");
    gifExport.setRepeat(0); // make it an "endless" animation
    gifExport.setDelay(1000/12);
    //gifExport.setTransparent(0, 0, 0); // make black the transparent color. every black pixel in the animation will be transparent
  }
  
}
void draw() {
  background(242);
  // noise
  //fill(242,120);
  //rect(0,0,width,height);
  drawShape();
  println(frameCount);
  //saveFrame("gif/frame#####.png");
  
  if (makeGif && frameCount%2==0){
    gifExport.addFrame();
    gifExport.setDelay(1);
    //gifExport.setDispose(GifMaker.DISPOSE_REMOVE);
    if (frameCount>240){
      println("Giffed!");
      gifExport.finish();
      exit();
    }
  }
  
}

void drawShape() {

  int size = 55;
  float period = 120;

  for (int i=-6; i<0; i++) {
    pushMatrix();
    fill(100, 150);
    //stroke(222, 0);
    noStroke();
    translate(width/2, height/2);
    float x = 150*sin(frameCount/period*i);
    float y = 150*cos(frameCount/period*i);
    ellipse(x, y, size, size);
    popMatrix();
  }
  for (int i=1; i<=6; i++) {
    pushMatrix();
    fill(100, 150);
    //stroke(222, 0);
    noStroke();
    translate(width/2, height/2);
    float x = 150*sin(frameCount/period*i);
    float y = 150*cos(frameCount/period*i);
    ellipse(x, y, size, size);
    popMatrix();
  }
}
