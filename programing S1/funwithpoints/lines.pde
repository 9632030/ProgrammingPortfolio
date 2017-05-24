class Lines {
  float xpos;
  float ypos;
  float strokeW;
  float lineLength;


  //constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos=tempX;
    ypos=tempY;
    strokeW=tempStroke;
    lineLength=tempLength;
  }

  //Display Method
  void display() {
    strokeW= random(1, 10);
    lineLength=random(2, 70);
    stroke(random(255), random(20), random(100));
    if (xpos>width || xpos<0||ypos>height||ypos<0) {
      xpos=random(width);
      ypos=random(height);
    } else {
      if (random(100)>70) {
        stroke(0, 255, 255);
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, lineLength);
      } else if (random(100)>65) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, lineLength);
      } else if (random(100)>55) {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, lineLength);
      } else {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, lineLength);
      }
    }
  }

  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos=startX+i;
      ypos=startY;
    }
  }
  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos=startX-i;
      ypos=startY;
    }
  }
  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      ypos=startY-i;
      xpos=startX;
    }
  }
  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      ypos=startY+i;
      xpos=startX;
    }
  }
}