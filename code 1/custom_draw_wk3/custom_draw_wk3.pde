color c; 
int xPos, yPos;
int xVel;

void setup(){
  size(1000, 1000); 
  smooth(); 
  background(255); 
}

void draw(){
  background(255);
  if(mousePressed){
    xPos += xVel;
  }
}

void mousePressed(){
  c = color(random(255), random(255), random(255));  
  int s = int(random(20, 200)); 
  xPos = mouseX;
  yPos = mouseY;
  drawShip(c, mouseX, mouseY, s); 
}

void drawShip(color col, int x, int y, int size){
  noStroke(); 
  fill(col); 
  ellipse(x, y, size*2, size); 
  ellipse(x, y-(size/2), size, size); 
}