void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  drawCircle(width/4, 200, 4);
}

void drawCircle(int x, int radius, int level) {                    
  float tt = 126 * level/4.0;
  fill(tt);
  ellipse(x, height/4, radius*4, radius*4);      
  if(level > 1) {
    level = level - 1;
    drawCircle(x - radius/4, radius/4, level);
    drawCircle(x + radius/4, radius/4, level);
    
    rect(30, 40, 15, 15);
    rect(40, 50, 25, 25);
    rect(50, 60, 35, 35);
    rect(60, 70, 45, 45);
    rect(70, 80, 55, 55);
    rect(80, 90, 65, 650);
    rect(90, 100, 55, 55);
    rect(100, 110, 45, 45);
    rect(110, 120, 35, 35);
    rect(120, 130, 25, 25);
    rect(130, 140, 15, 15);
  }
}