float x1, y1;
float x2, y2;
float g, b; // g=green, b=blue

void setup(){
  size(1000,1000);
  noStroke();
}

void draw(){
  g = map(mouseX, 0, width, 0, 255); //0-255 = rgb colors 
  b = map(mouseY, 0, height, 0, 255); // only using g and b - background only changes g-b
  background(0, g ,b); //background changes color
  //mapping to 0,300 width and 100,400 height
  fill(255);
  x1 = map(mouseX, 0, width, 0, 300);
  y1 = map(mouseY, 0, height, 0, 300);
  ellipse(x1, y1, 100, 100);
  
  //follow mouse until mouse is outside of an area
  //ellipse follow our mouse
  //set up boundries for ellipse 
  ellipse(x2, y2, 100, 100);
  if(mouseX<width/2){
    x2 = mouseX;
    y2 = mouseY;
  }else{
    x2 = width/2;
    //y2 = mouseY;
  }
}