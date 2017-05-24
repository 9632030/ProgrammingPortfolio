void setup(){
  size(400,400);
  background(200);
  frameRate(2);
}
void draw(){
  fill(245,190,90);
  strokeWeight(5);
  ellipse(width/2,height/2,random(width*0.7,width*0.95),random(width*.72,width*0.99));
  line(190,195,200,195);
  line(190,195,200,250);
  fill(180);
  ellipse(125,150,50,50);
  ellipse(250,150,50,50);
  line(250,270,150,270);
  

}