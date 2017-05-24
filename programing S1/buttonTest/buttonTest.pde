Button b1;

void setup(){
  size(200,200);
  b1= new Button(color(200), 20,20,50,50,"test");
}

void draw(){
  b1. display();
  b1.hover(mouseX, mouseY);
}