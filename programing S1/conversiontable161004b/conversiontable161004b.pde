void setup(){
  size(950,300);
  background(145);
}


void draw(){
  changeToNanMet(mouseX-100);
  fill(50,100,255);
  rect(45,50,mouseX-50,20);
  fill(255);
  drawReference(100,50);
}

void drawReference(int xpos,int ypos){
  fill(255);
  stroke(200);
  line(xpos-50,ypos,900,ypos);
  for(int i=0; i<800;i=i+50){
    line(xpos+i,ypos-5,xpos+i,ypos+5);
    text(i,xpos+i-5,ypos-8);
  }
  
}

float changeToNanMet(float value){
  value= (value)*1/1000;
  background(0);
  fill(255,0,0);
  text("Nanometers value="+ (mouseX-100),50,100);
  text("Micrometers vaule=" + (value),50,130);
  text("My table is coverting micrometers to nanometers",250,100);
  text("James Ninow A-2",700,100);
  return value;
}