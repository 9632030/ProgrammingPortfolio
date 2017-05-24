class Button {
  color b1, b2, t1, t2; //colors for buttons and text
  int x, y, w, h;
  String val;
  Boolean over;

  // constructor
  Button(){}
  Button(color b1, int x, int y, int w, int h, String val) {
    this.b1= b1;
    this.x= x;
    this.y= y;
    this.w= w;
    this.h= h;
    this.val= val;
    over= false;
  }

  // display method
  void display() {
    if (over) {
      fill(128);
      rect(x, y, w, h, 3);
      fill(255,0,0);
      rect(x-4, y+4, w, h, 3);
      fill(0);
      text(val, x+5,20 ,y+20);
    } else {
      fill(128);
      rect(x, y, w, h, 3);
      fill(b1);
      rect(x-4, y+4, w, h, 3);
      fill(0);
      text(val, x+20, y+20);
    }
  }

  // hover method
  void hover(int xpos, int ypos) {
    over= xpos>x && xpos<x+w && ypos>y && ypos<y+h;
  }
}