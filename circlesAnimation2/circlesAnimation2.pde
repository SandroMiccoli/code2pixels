
import gifAnimation.*;
import processing.opengl.*;

GifMaker gifExport;

boolean makeGif = false;

  int cor = 0;

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
  //background(242);
  // noise
  fill(230,-63);
  rect(0,0,width,height);
  drawShape();
  //println(frameCount);
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
  float osc = oscilator(29,80,0);
  float size = 30+osc;
  float period = 650;
  color c;
  println(osc);
  for (int i=-1; i<=1; i+=2){
    pushMatrix();
    if (osc==-29)
      cor++;
    if(i==-1)
       c = allColors[4][cor%4];
    else
       c = allColors[4][cor%4+1];
    fill(c,240);
    stroke(100,100);
    translate(width/2, height/2);
    float x = 70*sin(frameCount/period*30*i)+500*tan(frameCount/period*0.19*i);
    float y = 140*cos(frameCount/period*15);
    ellipse(x, y, size, size);
    popMatrix();
  }
}
