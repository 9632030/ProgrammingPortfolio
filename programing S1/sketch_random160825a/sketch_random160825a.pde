void setup() {
  size(500,500);
  frameRate(10);
}

void draw(){
  fill(random(1,50),random(1,50),random(100,250));
  rect(random(width+1),random(height+1),random(50),random(50));
  fill(random(1,50),random(1,50),random(1,50));
  ellipse(random(width+1),random(height+1),50,50);
  triangle(random(width+1),random(height+1),random(width+1),random(height+1),random(width+1),random(height+1));
}