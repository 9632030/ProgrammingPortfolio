//Lines mylines1;
Lines[] myLines= new Lines [10];

void setup() {
  size(displayWidth,displayHeight);
  background(130);
  //mylines1 = new lines(random(width),random(height),random(1,5),random(1,20));
  for(int i=0; i<myLines.length;i++){
    myLines[i]= new Lines(random(width),random(height),random(1,5),random(1,20));
  }
}
  //xpos=width/2;
  //ypos=height/2;

void draw() {
  //mylines1.display();
  for(int i=0; i<myLines.length; i++){
    myLines[i].display();

  }
 }

   