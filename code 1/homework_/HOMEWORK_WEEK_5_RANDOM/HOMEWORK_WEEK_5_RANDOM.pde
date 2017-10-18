float circleX;
float circleY;

void setup(){
  size(600, 600);
  background(30);
}

void draw(){
  circleX = random(width);
  circleY = random(height);
  
  fill(0, 110, 200);
  noStroke();
  ellipse(circleX, circleY, 24, 24);
}