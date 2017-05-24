size(200,200);
for(int x=0;x<width;x+=10){
  for(int y=0;y<height;y+=10){
    fill(random(10),random(50),random(180));
    noStroke();
    rect(x,y,10,10);
  }
}
  