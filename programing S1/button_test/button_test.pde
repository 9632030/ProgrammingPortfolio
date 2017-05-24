void setup(){
  size(500,500);
}
void draw(){
  button(10,10,100,30,"Button Test");
  button(10,50,120,30,"Button Test 2");
  button(10,90,140,30,"Hello Mr. Kapptie");
}
void button(int x,int y,int w,int h, String bt){
  //bottom rect-shadow
  noStroke();
  fill(70);
  rect(x+4,y+4,w,h,7);
  
  //top rect
  stroke(0);
  fill(150);
  rect(x,y,w,h,7);
  
  //render text
  fill(25);
  text(bt,x+10,y+20);
}