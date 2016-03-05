int currentPallet=0;
int bg=244;
color myColors[][] = {
  {#587291, #2F97C1, #1CCAD8, #15E6CD, #0CF574}, 
  {#F8E5F7, #6AB1AC, #C8EBA4, #FFF89C, #FDE9A7}, 
  {#44355B, #31263E, #221E22, #ECA72C, #EE5622}, 
  {#E65A08, #ECA72C, #084C61, #DB504A, #54457F}, 
  {#25171a, #3b2544, #384d48, #364156, #2f394d}, 
  {#124e78, #f0f0c9, #f2bb05, #d74e09, #6e0e0a}, 
  {#420d0d, #5b2121, #631f1f, #7c2626, #912e2d},
  {#26420d, #306300, #445b21, #517c26, #5d912d},
  {#0f0d42, #010063, #21265b, #26267c, #2e2d91}
};


void keyPressed() {
  switch(key) {
  case 'p':
    println("Frame saved: "+getTime()+".png");
    saveFrame(getTime()+".png");
    saveFrame(getTime()+".tga");
    saveFrame(getTime()+".tiff");
    saveFrame(getTime()+".jpg");
    saveOneFrame=true;
    break;
  case 'c':
    currentPallet=(currentPallet+1)%myColors.length;
    redraw();
    break;
  case 'b':
    if (bg==244) bg=44;
    else bg=244;
    redraw();
    break;
  case ' ':
    redraw();
    break;
  }
}


String getTime() {
  int d = day();    // Values from 1 - 31
  int m = month();  // Values from 1 - 12
  int y = year();   // 2003, 2004, 2005, etc.
  int s = second();  // Values from 0 - 59
  int min = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23

  return d+"-"+m+"-"+y+"--"+h+"-"+min+"-"+s;
}