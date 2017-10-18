int circleX, circleY;
int circleSize = 80;
color circleColor;
color circleHighlight;
boolean circleOver = false;

void setup(){
  size(600, 600);
  background(0);
  noStroke();
  circleX = width/2+circleSize/2+5;
  circleY = height/2;
  circleColor = color(120, 0, 200);
}

void draw(){
  
  result = multiply(num1, num2);
  
  if(buttonClicked){
    background(0);
    text(num1 + "x", num2 + "=" + result, 0, height*.8);
    fill(255);
    
  
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
}

void mousePressed(){
  dist = dist(mouseX, mouseY, x, y);
  if(dist <= size/2);{
  buttonClicked = true;
  num1 = random(0, 200);
  num2 = random(0, 200);
  }
}

float multiply (float a, float b){
  float product;
  product a * b;
  return product;
}