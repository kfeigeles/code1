int brushSize;

void setup(){
  size(500, 500);
  background(255);
  brushSize = 10;
}

void draw(){
  fill(random(0, 255), random(0, 255), random(0, 255));
  noStroke();
  rect(30, 40, 60, 60);
  
  fill(200, 0, 100);
  rect (200, 50, 50, 300);
  
  fill(255, 30);
  rect(0, 0, width, height);
  
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(60, 70, 82, 82);
  
  fill(200, 0 , 0);
  triangle(70, 105, 78, 40, 109, 75);
  
  fill(0, 0, 100);
  rect(80, 91, 100, 100);
  
  if(mousePressed){
  fill(0, 0, 100);
  noStroke();
  ellipse(mouseX, mouseY, brushSize, brushSize);
  }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && brushSize <= 500){
      brushSize += 10; 
    }else if(keyCode == DOWN && brushSize >=10){
      brushSize -= 10; 
    }
  }
}