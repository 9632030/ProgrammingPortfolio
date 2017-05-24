PImage ship;
class Spaceship {
  int pu;
  float name;
  int x, y, w, h, lx1, ly1, lx2, ly2;
  int laser, lWidth, lHeight;
  int speed;

  Spaceship(int x, int y, int w, int h, int laser, int lWidth, int lHeight) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.laser = laser;
    this.lWidth = lWidth;
    this.lHeight = lHeight;
    lx1 = x;
    ly1 = y;
    lx2 = x;
    ly2 = y;
    ship=loadImage("spaceship.png");
    pu=0;
  }


  //Spaceship asNumber(float tempNumberValue, int tempW, int tempH) {
  //  isNumber=true;
  //  NumberValue= tempNumberValue;
  //  shipW= tempW;
  //  shipH= tempH;
  //  return this;
  //}


  void display() { {
      imageMode(CENTER);
      image(ship, x, y);
    }
  }
   //void shoot() {
   // noStroke();
   // for (int i=0; i<200; i++) {
   //   x = x;
   //   y = y;
   //   fill(255,34,54);
   //   ellipse(x,y-20-i,2,2);
   //   x+=i;
   //  y-=i;
   //}
   }