int currentPallet=3;
int bg=44;
color myColors[][] = {
  {#587291, #2F97C1, #1CCAD8, #15E6CD, #0CF574}, 
  {#F8E5F7, #6AB1AC, #C8EBA4, #FFF89C, #FDE9A7},
  {#44355B, #31263E, #221E22, #ECA72C, #EE5622},
  {#E65A08, #ECA72C, #084C61, #DB504A, #54457F}
};


void keyPressed() {
  switch(key) {
  case 'p':
    println("Frame saved: "+getTime()+".png");
    saveFrame(getTime()+".png");
    break;
  case 'c':
    currentPallet=(currentPallet+1)%myColors.length;
    redraw();
    break;
  case 'b':
    if(bg==244) bg=44;
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