setup(){
  size(1000,1000);
}

void draw(){
  drawGrid();
}

void drawGrid(){
  for(int i=0;i<1000;i+=100){
    // draw horizontal lines
    line(0,i,width,i);
    // draw vertical lines
    line(i,0,i,height);
    text(i,0,i);
  }
}