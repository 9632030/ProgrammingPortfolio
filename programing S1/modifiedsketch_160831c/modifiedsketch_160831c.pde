int xspeed, yspeed;
int xpos,ypos,wdth,ht;
void setup(){
  size(1930,1050);
  background(0);
  xspeed=3;
  yspeed=10;
  wdth=20;
  ht=20;
  noStroke();
  xpos=width/2;
  ypos=height/2;
  frameRate(30);
}
void draw(){
  //background(0);
  fill(255);
  ellipse(xpos,ypos,wdth,ht);
  fill(255); //<>//
  ellipse(xpos+40,ypos,wdth,ht);
  xpos+=xspeed;
  ypos+=yspeed;
  if(xpos>=width-wdth/2||xpos<=wdth/2){
    xspeed*=-1;
  }
  if(ypos>=height-ht/2||ypos<=ht/2){
    yspeed=yspeed*-1;
  }
}