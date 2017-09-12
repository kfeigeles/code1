int x, y;
int size;

void setup(){
  
  size(500,500);
  background(0);
  smooth();
  fill(192);
  noStroke();
  
  x = 100;
  y = 100;
  
}

void draw(){
  
  triangle(x +15, y, x, y + 15, x + 30, y + 15);
  rect(x, y +15, 30, 30);
  rect(x + 12, y + 30, 10, 15);
  
  rect(x, y + 45, 60, 60);
  
  triangle(x + 150, y, x, y + 150, x + 300, y + 300);
  
  // use push and pop matirx to isolate one thing and then return to original
  pushMatrix();
   // push matrix stores the coordinates of transformations
  translate(-200, -100);
  scale(2.0);
  triangle(x +15, y, x, y + 15, x + 30, y + 15);
  rect(x, y +15, 30, 30);
  rect(x + 12, y + 30, 10, 15);
  popMatrix();
  //pop matirx resets coordinate system back to original
 
  pushMatrix();
  // push matrix stores the coordinates of transformations
  translate(200, 100);
  //scale(2.0);
  triangle(x +15, y, x, y + 15, x + 30, y + 15);
  rect(x, y +15, 30, 30);
  rect(x + 12, y + 30, 10, 15);
  popMatrix();
  //pop matirx resets coordinate system back to original
  
  if(frameCount % 5 == 0){
    fill(random(0, 255), random(0, 255), random(0, 255));
    pushMatrix();
    translate(100, 150);
    rotate(radians(frameCount % 340));
    rect(0, 0, 70, 40);
    popMatrix();
  }
  
  if(frameCount % 40 == 0){
    fill(0, 0, 250);
    pushMatrix();
    translate(200, 200);
    rotate(radians(frameCount % 350));
    rect(0, 0, 80, 50);
    popMatrix();
  }
  
}