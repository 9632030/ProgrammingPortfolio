int x = 500;
int y = 500;

void setup(){
  size(500,500);
  background(180);
  frameRate(500);
}

void draw(){
  background(180);
  ellipse(x--,y--,50,50); //<>// //<>//
  fill(255,0,0); //<>// //<>//
}