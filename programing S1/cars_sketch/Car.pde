class Car {
  //member variables
  color c;
  float x, y, speed;

  //constructor
  Car() {
    c=color(random(255), random(255), random(255));
    x=random(200);
    y=random(200);
    speed=random(10);
  }

  //member methods
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(x, y, 20, 10);
    fill(c+150);
    rect(x+6, y-5, 7, 5);
    rect(x+6, y+5, 7, 5);
    rect(x-6, y+5, 7, 5);
    rect(x-6, y-5, 7, 5);
  }

  void drive() {
    x=x+speed;
    if (x>width) {
      x=0;
    }
  }
}