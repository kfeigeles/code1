int x;
int y;
int x1;
int y1;
int size;
int page, cx, cy;
int pageNumber;

void setup(){
  size(600, 600);
  pageNumber = 0;
  
  x = width;
  y = height;
  x1 = 187;
  y1 = 185;
  size = 220;
  
  frameRate(50);
  smooth();
  rectMode(CORNER);
  ellipseMode(CENTER);
  cx = width >> 1;
  cy = height >> 1;
  redraw();
}

void draw(){
  background(255);
  method ("page" + page);
  
  if(pageNumber == 0)
  {
    levelZero();
  else if (pageNumber == 1);
  {
 }
}

void page0(){
  background(255);
  textSize(50);
  fill(0);
  text("welcome", 193, 300);
  
  stroke(0);
  noFill();
  rect(x1, y1, size, size);
}

void page1(){
  background(255);
  noStroke();
  fill(67, 31, 31);
  rect(0, 500, 600, 600);
  
  noStroke();
  fill(0);
  rect(0, 500, 60, 60);
  
  textSize(30);
  fill(245, 166, 212);
  text("what can I get you?", 160, 100);
  
  textSize(25);
  fill(237, 110, 184);
  text("coffee", 100, 300);
  
  noStroke();
  fill(210, 119, 250);
  rect(98, 320, 80, 50);
  
  textSize(25);
  fill(237, 110, 184);
  text("tea", 450, 300);
  
  noStroke();
  fill(210, 119, 250);
  rect(430, 320, 80, 50);
}

void page2(){
  background(255);
  noStroke();
  fill(67, 31, 31);
  rect(0, 500, 600, 600);
  
  textSize(27);
  fill(82, 194, 247);
  text("hot", 450, 300);
  
  textSize(27);
  fill(82, 194, 247);
  text("cold", 100, 300);
}

void page3(){
  fill(67, 31, 31);
  rect(0, 500, 600, 600);
  
  textSize(50);
  fill(250, 124, 212);
  text("have a great day!", 193, 300);
}

void page4(){
  fill(67, 31, 31);
  rect(0, 500, 600, 600);
  
  textSize(27);
  fill(82, 194, 247);
  text("hot", 450, 300);
  
  textSize(27);
  fill(82, 194, 247);
  text("cold", 100, 300);
}

void page5(){
  fill(67, 31, 31);
  rect(0, 500, 600, 600);
  
  textSize(27);
  fill(82, 194, 247);
  text("cold brew", 100, 300);
  
  textSize(27);
  fill(82, 194, 247);
  text("ice latte", 100, 300);
}

void page6(){
  fill(67, 31, 31);
  rect(0, 500, 600, 600);
  
  textSize(27);
  fill(82, 194, 247);
  text("house brew", 100, 300);
  
  textSize(27);
  fill(82, 194, 247);
  text("americano", 100, 300);
}

void page7(){
  fill(67, 31, 31);
  rect(0, 500, 600, 600);
  
  textSize(50);
  fill(82, 194, 247);
  text("have a good one", 193, 300);
}

void page8(){
  fill(67, 31, 31);
  rect(0, 500, 600, 600);
  
  textSize(50);
  fill(82, 194, 247);
  text("come back soon", 193, 300);
}

void mousePressed(){
}