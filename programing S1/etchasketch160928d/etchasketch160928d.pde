int x, y;

void setup() {
  size(400,400);
  frameRate(10);
  // Set start coords
  x = 0;
  y = 0;
}

void draw() {
  fill(255);
  //drawName();
  //noLoop();
}

// Algorithm for your first name
void drawName() {
  moveRight(10);
  moveDown(10);
  moveLeft(5);
  moveUpright(5);
  moveDown(5);
  moveRight(10);
  moveUpright(10);
  moveDown(5);
  moveDiagonal(5);
  moveDia2(5);
  moveDia3(5);
  moveRight(3);
  moveDown(10);
  moveUpright(10);
  moveDiagonal(10);
  moveUpright(10);
  println(keyCode); 
}

// Method to draw right line
void moveRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y);
  }
  x=x+(10*rep);
}
// Method to draw line down
void moveDown(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y+i);
  }
  y=y+(10*rep);
}
// Method to draw right line
void moveRight2(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y);
  }
  x=x+(10*rep);
}
// Method to draw left line 
void moveLeft(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y);
  }
  x=x-(10*rep);
}
// Method to draw Uprightline
void moveUpright(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y-i);
  }
  y=y-(10*rep);
}
// Method to draw diagonal line
void moveDiagonal(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y+i);
  }
  y=y+(10*rep);
  x=x+(10*rep);
  
}
// Method to draw dia line
void moveDia2(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y-i);
  }
  y=y-(10*rep);
  x=x-(10*rep);
}
// Method to draw dia line
void moveDia3(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y-i);
  }
  y=y-(10*rep);
  x=x+(10*rep);
}
void keyPressed() {
  if (key == CODED) {
    println(keyCode); {
      if (keyCode == RIGHT){
        moveRight(1);
      }else if(keyCode==DOWN){
        moveDown(1);
      }else if(keyCode==LEFT){
        moveLeft(1);
      }else if(keyCode==UP){
        moveUpright(1);
        
      }
    }
  }
}