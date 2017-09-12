void setup(){
  
  size(500, 500);
  background(200, 50, 0);
  noStroke();
  
}

void draw(){
  
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(width/2, height/2, 45, 45);
  
  triangle(30, 75, 58, 20, 86, 75);
  
  arc(50, 50, 80, 80, 0, PI+QUARTER_PI, OPEN);
  
}