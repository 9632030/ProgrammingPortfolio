// global variable
color bg1= #1C1DFF;
color bg2= #03FF3D;
color bgn1= #FF0000;
color bgn2= #FF0303;
color txt1= #000000;
color txt2= #FFCC00;

void setup(){
  size(900,400);
  background(bgn1);
}

void draw(){
  background(bgn1);
  drawRef(50,300,850,300);
  textSize(20);
  text("Historic Computers",360,100);
  textSize(10);
  textAlign(CENTER);
  text("The history of Computing hardware covers the developments from \n early simple devices to aid calculation to modern day computers \n By Ken Kapptie|2015",450,130);
  textSize(10);
  textAlign(TOP);
  histEvent(100,240,120,30,"Zuse Z3 (Germany)","Test Description",true);
  histEvent(300,240,125,30,"Colossus Mark 1(UK) ","Test Description",true);
  histEvent(500,240,125,30,"Colossus Mark 2(UK) ","Test Description",true);
  histEvent(700,240,90,30,"ENIAC (US)","Test Description",true);
  histEvent(30,350,155,30,"Atanasoff-Berry Computer (US)","Test Description",false);
  histEvent(230,350,150,30,"Harvard Mark 1-IBM ASCC(US)","Test Description",false);
  histEvent(430,350,100,30,"Zuse Z4 (Germany)","Test Description",false);
  histEvent(630,350,120,30,"Manchester Mark 1 (UK)","Test Description",false);
}

void histEvent(int x, int y, int w, int h, String tText, String dText, boolean top){
  if (top){
  strokeWeight(2);
  line(x+20,y+h,x+50,y+h+30);
  }else{
  line(x+50,y,x+70,y-50);
  }
  fill(128,128,128,128);
  noStroke();
  rect(x+3,y+3,w,h,5); //shadow
  fill(bg2);
  rect(x,y,w,h,5); // Button
  fill(txt1);
  stroke(0);
  text(tText,x+5,y+20);
  if(mouseX>x && mouseX<=x+w && mouseY>y && mouseY<=y+h){
    if (top){
    text(dText,x,y-30);
    } else {
      text(dText,x+150,y+20);
    }
    //text(dText,x,y+60);
  }
}
void drawRef(int x, int y, int w, int h){
  strokeWeight(4);
  line(x,y,w,h);
  //TODO: add tick marks for years and year numbers
  for(int i=0; i<850; i+=50){
    strokeWeight(2);
    line(x+i,y-10,x+i,y+10);
    textSize(9);
    text("19"+ i,x+i-10,y-10);
  }
  
 
}
  