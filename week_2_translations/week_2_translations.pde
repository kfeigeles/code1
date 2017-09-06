int x, y;
int size;

void setup(){
  
  size(500,500);
  background(0);
  
  x = 100;
  y = 100;
  
}

void draw(){
  
  triangle(x +15, y, x, y + 15, x + 30, y + 15);
  rect(x, y +15, 30, 30);
  rect(x + 12, y + 30, 10, 15);
  
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
  
}